/**
 * 钢条切割问题
 * 长度价格表：
 * 		长度i   | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
 * 		价格p_i | 1 | 5 | 8 | 9 | 10| 17| 17| 20| 24| 30 |
 *
 * 	对于给定的钢条尺寸n和价格表i，求钢条的最佳分割收益。
 */

#include<iostream>

int cutting_r(const int * priceTable, const int tlen, const int n)
{
	int p = n;

	if (n <= tlen) {
		p = priceTable[p-1];
	}

	for (int i = 1; i<n;i++) {
		int x = cutting_r(priceTable, tlen, i) + cutting_r(priceTable, tlen, n - i);
		if (p < x) {
			p = x;
		}
	}
	return p;
}

int main(void)
{
	int priceTable[] = {1,5,8,9,10,17,17,20,24,30};
	int p = cutting_r(priceTable, sizeof(priceTable)/sizeof(int), 4);
	std::cout<<"max: " << p << std::endl;
	return 0;
}