#ifndef BLOOM_FILTER_H
#define BLOOM_FILTER_H

#include <algorithm>
#include <cmath>
#include <cstddef>
#include <cstdlib>
#include <iterator>
#include <limits>
#include <string>
#include <vector>

#define HASH_OP(hash, i1, i2) \
	hash ^= (hash <<  7) ^  (i1) * (hash >> 3) ^ \
    (~((hash << 11) + ((i2) ^ (hash >> 5))));

static const std::size_t bits_per_char = 0x08; // 8bit one char
static const unsigned char bit_mask[bits_per_char] = {0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};  // bit mask

class BloomFilter {
 public:
 	BloomFilter(unsigned long long int projected_element_num, double false_positive_probability, unsigned long long int random_seed, bool use_optimal)
 		: table_size_(0),
 		random_seed_((random_seed*0xA5A5A5A5) + 1),
 		num_hashes_(0),
 		projected_element_num_(projected_element_num),
 		inserted_element_num_(0),
 		false_positive_probability_(false_positive_probability),
 		use_optimal_(use_optimal)
 		{
 			ComputeParameters();
 			GenerateSalt();

 			bit_table_.resize(table_size_, static_cast<unsigned char>(0x00));
 		}

 	virtual ~BloomFilter()
 	{}

 	void Clean()
 	{
 		std::fill(bit_table_.begin(), bit_table_.end(), static_cast<unsigned char>(0x00));
 		inserted_element_num_ = 0;
 	}

 	inline void Insert(const unsigned char * data, const std::size_t& len)
 	{
 		std::size_t index = 0;
 		std::size_t bit = 0;

 		for (unsigned int i = 0; i < num_hashes_; i++) {
 			ComputeIndices(HashInt(data, len, salt_[i]), index, bit);

 			bit_table_[index / bits_per_char] |= bit_mask[bit];
 		}

 		++inserted_element_num_;
 	}

 	template <typename T>
 	inline void Insert(const T& t)
 	{
 		Insert(reinterpret_cast<const unsigned char *>(&t), sizeof(T));
 	}

 	inline void Insert(const std::string& key)
 	{
 		Insert(reinterpret_cast<const unsigned char *>(key.data()), key.size());
 	}

 	inline void Insert(const char* key, const std::size_t& len)
 	{
 		Insert(reinterpret_cast<const unsigned char *>(key), len);
 	}

 	inline virtual bool Contains(const unsigned char * data, const std::size_t& len) const
 	{
 		std::size_t index = 0;
 		std::size_t bit = 0;

 		for (unsigned int i = 0; i < num_hashes_; i++) {
 			ComputeIndices(HashInt(data, len, salt_[i]), index, bit);
 			if ((bit_table_[index / bits_per_char] & bit_mask[bit]) != bit_mask[bit]) {
 				return false;
 			}
 		}

 		return true;
 	}

 	template<typename T>
 	inline bool Contains(const T& t) const
 	{
 		return Contains(reinterpret_cast<const unsigned char *>(&t), sizeof(T));
 	}

 	inline bool Contains(const std::string& key) const
 	{
 		return Contains(reinterpret_cast<const unsigned char *>(key.data()), key.size());
 	}

 	inline bool Contains(const char* data, const std::size_t& len) const
 	{
 		return Contains(reinterpret_cast<const unsigned char *>(data), len);
 	}
 	
 	inline virtual unsigned long long int Size() const { return table_size_; }

 	unsigned long long int GetInsertedElementNum() const { return inserted_element_num_; }

 	double FalsePositiveProbability() const
 	{
 		return std::pow(1.0 - std::exp(-1.0 * salt_.size() * inserted_element_num_ / Size()), 1.0 * salt_.size());
 	}

 	unsigned int num_hashes() const { return num_hashes_; }

 protected:
 	inline virtual void ComputeParameters()
 	{
 		num_hashes_ = static_cast<unsigned int>(-1*std::log2(false_positive_probability_));
 		table_size_ = static_cast<unsigned long long int>(-1 * (projected_element_num_ * std::log(false_positive_probability_)) / kSquareLn2);
 		table_size_ += ((table_size_ % bits_per_char) != 0) ? (bits_per_char - table_size_ % bits_per_char) : 0;
 	}

 	virtual void ComputeOptimalParameters()
 	{
 		// unimplement
 	}

 	inline virtual void ComputeIndices(const unsigned int& hash, std::size_t& index, std::size_t& bit) const
 	{
 		index = hash % table_size_;
 		bit = index % bits_per_char;
 	}

 	void GenerateSalt()
 	{
 		static const std::size_t kPredefSaltCount = 128;
 		static const unsigned int predef_salt[kPredefSaltCount] =
 								{
                                    0xAAAAAAAA, 0x55555555, 0x33333333, 0xCCCCCCCC,
                                    0x66666666, 0x99999999, 0xB5B5B5B5, 0x4B4B4B4B,
                                    0xAA55AA55, 0x55335533, 0x33CC33CC, 0xCC66CC66,
                                    0x66996699, 0x99B599B5, 0xB54BB54B, 0x4BAA4BAA,
                                    0xAA33AA33, 0x55CC55CC, 0x33663366, 0xCC99CC99,
                                    0x66B566B5, 0x994B994B, 0xB5AAB5AA, 0xAAAAAA33,
                                    0x555555CC, 0x33333366, 0xCCCCCC99, 0x666666B5,
                                    0x9999994B, 0xB5B5B5AA, 0xFFFFFFFF, 0xFFFF0000,
                                    0xB823D5EB, 0xC1191CDF, 0xF623AEB3, 0xDB58499F,
                                    0xC8D42E70, 0xB173F616, 0xA91A5967, 0xDA427D63,
                                    0xB1E8A2EA, 0xF6C0D155, 0x4909FEA3, 0xA68CC6A7,
                                    0xC395E782, 0xA26057EB, 0x0CD5DA28, 0x467C5492,
                                    0xF15E6982, 0x61C6FAD3, 0x9615E352, 0x6E9E355A,
                                    0x689B563E, 0x0C9831A8, 0x6753C18B, 0xA622689B,
                                    0x8CA63C47, 0x42CC2884, 0x8E89919B, 0x6EDBD7D3,
                                    0x15B6796C, 0x1D6FDFE4, 0x63FF9092, 0xE7401432,
                                    0xEFFE9412, 0xAEAEDF79, 0x9F245A31, 0x83C136FC,
                                    0xC3DA4A8C, 0xA5112C8C, 0x5271F491, 0x9A948DAB,
                                    0xCEE59A8D, 0xB5F525AB, 0x59D13217, 0x24E7C331,
                                    0x697C2103, 0x84B0A460, 0x86156DA9, 0xAEF2AC68,
                                    0x23243DA5, 0x3F649643, 0x5FA495A8, 0x67710DF8,
                                    0x9A6C499E, 0xDCFB0227, 0x46A43433, 0x1832B07A,
                                    0xC46AFF3C, 0xB9C8FFF0, 0xC9500467, 0x34431BDF,
                                    0xB652432B, 0xE367F12B, 0x427F4C1B, 0x224C006E,
                                    0x2E7E5A89, 0x96F99AA5, 0x0BEB452A, 0x2FD87C39,
                                    0x74B2E1FB, 0x222EFD24, 0xF357F60C, 0x440FCB1E,
                                    0x8BBE030F, 0x6704DC29, 0x1144D12F, 0x948B1355,
                                    0x6D8FD7E9, 0x1C11A014, 0xADD1592F, 0xFB3C712E,
                                    0xFC77642F, 0xF9C4CE8C, 0x31312FB9, 0x08B0DD79,
                                    0x318FA6E7, 0xC040D23D, 0xC0589AA7, 0x0CA5C075,
                                    0xF874B172, 0x0CF914D5, 0x784D3280, 0x4E8CFEBC,
                                    0xC569F575, 0xCDB2A091, 0x2CC016B4, 0x5C5F4421
                                };
        if (num_hashes_ <= kPredefSaltCount) {
        	std::copy(predef_salt, predef_salt + num_hashes_, std::back_inserter(salt_));
        	for (std::size_t i = 0; i < salt_.size(); i++) {
        		salt_[i] = (salt_[i] * salt_[(i+3)%num_hashes_]) + static_cast<unsigned int>(random_seed_);
        	}
        } else {
        	std::copy(predef_salt, predef_salt + kPredefSaltCount, std::back_inserter(salt_));

        	srand(static_cast<unsigned int>(random_seed_));

        	while(salt_.size() <= num_hashes_) {
        		unsigned int current_salt = static_cast<unsigned int>(rand()) * static_cast<unsigned int>(rand());
        		if (0 == current_salt) {
        			continue;
        		}
        		if (salt_.end() == std::find(salt_.begin(), salt_.end(), current_salt)) {
        			salt_.push_back(current_salt);
        		}
        	}
        }

 	}

 	inline unsigned int HashInt(const unsigned char *data, std::size_t len, unsigned int salt) const {
 		const unsigned char * itr = data;
 		unsigned int loop = 0;

 		while (len >= sizeof(unsigned int) * 2) {
 			const unsigned int& i1 = *(reinterpret_cast<const unsigned int *>(itr));
 			itr += sizeof(unsigned int);
 			const unsigned int& i2 = *(reinterpret_cast<const unsigned int *>(itr));
 			itr += sizeof(unsigned int);
 			HASH_OP(salt, i1, i2);
 			len -= sizeof(unsigned int) * 2;
 		}

 		if (len) {
 			if (len >= sizeof(unsigned int)) {
 				const unsigned int& i = *(reinterpret_cast<const unsigned int *>(itr));
 				salt ^= (~((salt << 11) + (i ^ (salt >> 5))));
 				++loop;
 				len -= sizeof(unsigned int);
 				itr += sizeof(unsigned int);
 			}

 			if (len >= sizeof(unsigned short)) {
 				const unsigned short& i = *(reinterpret_cast<const unsigned short *>(itr));
 				salt ^= (salt <<  7) ^  i * (salt >> 3);
 				++loop;
 				len -= sizeof(unsigned short);
 				itr += sizeof(unsigned short);
 			}

	 		if (len > 0) {
	 			salt += ((*itr) ^ (salt * 0xA5A5A5A5)) + loop;
	 		}
 		}

 		return salt;
 	}

 private:
 	const double kSquareLn2 = 0.48045301391; // ln(2) * ln(2)
 	std::vector<unsigned int> salt_;
 	std::vector<unsigned char> bit_table_;
 	unsigned long long int table_size_;  // total bits
 	
 	unsigned long long int random_seed_;
 	unsigned int num_hashes_;

 	unsigned long long int projected_element_num_;
 	unsigned long long int inserted_element_num_;

 	double false_positive_probability_;
 	bool use_optimal_;
};

#endif