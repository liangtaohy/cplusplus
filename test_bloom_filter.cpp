#include "bloom_filter.h"
#include <iostream>

int main(void)
{
	const char * a = "hello";
	const std::string b("helle");

	BloomFilter filter(1000000, 0.0001, 0xAF56C9D1, false);
	filter.Insert(reinterpret_cast<const unsigned char *>(a), 5);
	std::cout << filter.Contains(reinterpret_cast<const unsigned char *>(a), 5) << std::endl;
	std::cout << filter.Contains(b) << std::endl;
	std::cout << filter.FalsePositiveProbability() << std::endl;
	return 0;
}