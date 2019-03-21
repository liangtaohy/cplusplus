/**
 * 股票最佳收益
 * 给定数据：[3,5,1,2,5,8,9,6]
 * 求最大收益
 */

#include<iostream>

int findBest(const int * a, const int n)
{
	if (n < 2) {
		return 0;
	}

	int minIndex = 0;
	int maxDiff = 0;

	for (int i = 0; i < n; i++) {
		if (maxDiff < a[i] - a[minIndex]) {
			maxDiff = a[i] - a[minIndex];
		} else {
			if (a[minIndex] > a[i]) {
				minIndex = i;
			}
		}
	}

	return maxDiff;
}

int max_subsegment(const int * a, const int n)
{
	if (n < 2) {
		return 0;
	}

	int residual[100] = {0};
	int maxResidual = residual[0];
	int bResidual = residual[0];

	for (int i = 0; i<n-1; i++) residual[i+1] = a[i+1] - a[i];

	for (int i = 0; i<n-1; i++) {
		bResidual += residual[i+1];
		if (maxResidual <= bResidual) {
			maxResidual = bResidual;
		} else {
			bResidual = residual[i+1];
		}
	}
	return maxResidual;
}

int max_residual(const int *a, const int n)
{
	if (n < 2) {
		return 0;
	}

	int bResidual = 0;
	int maxResidual = 0;

	for (int i=0; i<n-1;i++) {
		bResidual += a[i+1] - a[i];
		if (maxResidual <= bResidual) {
			maxResidual = bResidual;
		} else {
			bResidual = a[i+1] - a[i];
		}
	}
	return maxResidual;
}

int main() {
	int a[] = {3,5,1,2,5,8,9,6};
	int maxDiff = findBest(a, sizeof(a)/sizeof(int));
	std::cout << "max diff: " << maxDiff << std::endl;
	int maxResidual = max_subsegment(a, sizeof(a)/sizeof(int));
	std::cout << "max residual: " << maxResidual << std::endl;
	return 0;
}
