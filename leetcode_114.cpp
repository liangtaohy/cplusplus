/*
 * 4. Median of Two Sorted Arrays
 * There are two sorted arrays nums1 and nums2 of size m and n respectively.
 *
 * Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
 *
 * You may assume nums1 and nums2 cannot be both empty.
*/
class Solution {
public:
	double findMedianSortedArrays(vector<int>& nums1, vector<int>& nums2) {
		int m = nums1.size();
		int n = nums2.size();
		if (m>n) {
			return _findMedianSortedArrays(nums2, n, nums1, m);
		} else {
			return _findMedianSortedArrays(nums1, m, nums2, n);
		}
	}

	double _findMedianSortedArrays(vector<int>& A, int m, vector<int>& B, int n) {
		int iMin = 0;
		int iMax = m;
		int halfPos = (m+n+1)/2;

		while(iMin <= iMax) {
			int i = (iMin + iMax) / 2;
			int j = halfPos - i;
			if (i>0 && A[i-1] > B[j]) {
				iMax = i - 1;
			} else if (i<m && B[j-1] > A[i]) {
				iMin = i + 1;
			} else {
				int maxLeft = 0;
				if (i == 0) {
					maxLeft = B[j-1];
				} else if (j == 0) {
					maxLeft = A[i-1];
				} else {
					maxLeft = max(A[i-1], B[j-1]);
				}

				if ((m+n) % 2 == 1) {
					return maxLeft;
				}

				int minRight = 0;
				if (i == m) {
					minRight = B[j];
				} else if (j == n) {
					minRight = A[i];
				} else {
					minRight = min(A[i], B[j]);
				}

				return (maxLeft + minRight) / 2.0;
			}
		}

		return 0.0;
	}
};