#include <iostream>
#include <vector>
using namespace std;

class Solution {
public:
	int rob(vector<int>& nums) {
		if (nums.empty()) {
			return 0;
		}

		if (nums.size() == 1) {
			return nums[0];
		}

		int * memo = new int[nums.size() + 1];
		memo[0] = 0;
		memo[1] = nums[0];

		for (int i = 1; i < nums.size(); i++) {
			int val = nums[i];
			memo[i+1] = max(memo[i], memo[i-1] + val);
		}
		return memo[nums.size()];
	}
};

int main(void)
{
	Solution s;
	vector<int> nums({1,2,3,1});

	int r = s.rob(nums);
	cout << r << endl;
	return 0;
}