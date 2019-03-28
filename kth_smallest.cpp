/**
 *Given an array and a number k where k is smaller than the size of the array, we need to find the k’th smallest element in the given array. It is given that all array elements are distinct.
 Examples:

Input: arr[] = {7, 10, 4, 3, 20, 15}
       k = 3
Output: 7

Input: arr[] = {7, 10, 4, 3, 20, 15}
       k = 4
Output: 10
 */

#include <iostream>
class Solution {
public:
	void sort(int arr[], int len) {
		quicksort(arr, 0, len - 1);
	}
private:
	int partition(int arr[], int lo, int hi) {
		int pivot = arr[lo];

		while(lo < hi) {
			while(lo < hi && pivot<arr[hi] && --hi);

			lo < hi ? arr[lo++] = arr[hi] : NULL;

			while(lo < hi && pivot>arr[lo] && ++lo);

			lo < hi ? arr[hi--] = arr[lo] : NULL;
		}
		
		arr[lo] = pivot;
		return lo;
	}

	void quicksort(int arr[], int lo, int hi) {
		if (lo >= hi) {
			return;
		}

		int p = partition(arr, lo, hi);
		quicksort(arr, lo, p-1);
		quicksort(arr, p+1, hi);
	}
};

int main(void) {
	int arr[] = {7, 10, 4, 3, 20, 15};
	Solution s;
	s.sort(arr, sizeof(arr)/sizeof(int));
	for(auto it : arr)
		std::cout<< it << std::endl;
	return 0;
}