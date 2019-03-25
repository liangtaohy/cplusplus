#include<iostream>
#include<vector>

class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        int n = nums.size();
        vector<vector<int>> result;
        
        int i = 0;
        int j = i + 1;
        while (j < n - 1) {
            for (int k=n-1;k>j;--k) {
                if (nums[i] + nums[j] + nums[k] == 0) {
                    result.push_back({nums[i], nums[j], nums[k]});
                    break;
                }
            }
        }
        return result;
    }
};

int main(void) {

}
