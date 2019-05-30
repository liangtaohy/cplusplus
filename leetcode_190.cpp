typedef union _bitset {
	unsigned int v;
	struct {
		unsigned int _00:1; unsigned int _01:1; unsigned int _02:1; unsigned int _03:1;
		unsigned int _04:1; unsigned int _05:1; unsigned int _06:1; unsigned int _07:1;
		unsigned int _08:1; unsigned int _09:1; unsigned int _10:1; unsigned int _11:1;
		unsigned int _12:1; unsigned int _13:1; unsigned int _14:1; unsigned int _15:1;
		unsigned int _16:1; unsigned int _17:1; unsigned int _18:1; unsigned int _19:1;
		unsigned int _20:1; unsigned int _21:1; unsigned int _22:1; unsigned int _23:1;
		unsigned int _24:1; unsigned int _25:1; unsigned int _26:1; unsigned int _27:1;
		unsigned int _28:1; unsigned int _29:1; unsigned int _30:1; unsigned int _31:1;
	} bs;
} bitset;

class Solution {
public:
	uint32_t reverseBits_1(uint32_t n) {
		bitset b;
		b.v = n;
		bitset c;
		c.bs = {
			b.bs._31, b.bs._30, b.bs._29, b.bs._28
            , b.bs._27, b.bs._26, b.bs._25, b.bs._24
            , b.bs._23, b.bs._22, b.bs._21, b.bs._20
            , b.bs._19, b.bs._18, b.bs._17, b.bs._16
            , b.bs._15, b.bs._14, b.bs._13, b.bs._12
            , b.bs._11, b.bs._10, b.bs._09, b.bs._08
            , b.bs._07, b.bs._06, b.bs._05, b.bs._04
            , b.bs._03, b.bs._02, b.bs._01, b.bs._00
		};
		return c.v;
	}

	uint32_t reverseBits_2(uint32_t n) {
		n = (n >> 16 | n << 16);
		n = ((n & 0xff00ff00) >> 8 | (n & 0x00ff00ff) << 8);
		n = ((n & 0xf0f0f0f0) >> 4 | (n & 0x0f0f0f0f) << 4);
		n = ((n & 0xcccccccc) >> 2 | (n & 0x55555555) << 2);
		n = ((n & 0xaaaaaaaa) >> 1 | (n & 0x33333333) << 1);
		return n;
	}
};