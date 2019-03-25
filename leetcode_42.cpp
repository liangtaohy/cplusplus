/**
 * Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining.
 * @url https://leetcode.com/problems/trapping-rain-water/
 */

class Solution
{
public:
    int trap(vector<int>& height)
    {
    	if (height.size() < 2) return 0;
        int ans = 0;
        int left = 0, right = height.size() - 1;
        int leftmax = height[left], rightmax = height[right];
        while (left < right) {
        	if (height[left] < height[right]) {
        		if (height[left] >= leftmax) {
        			leftmax = height[left];
        		} else {
        			ans += leftmax -height[left];
        		}
        		++left;
        	} else {
        		if (height[right] >= rightmax) {
        			rightmax = height[right];
        		} else {
        			ans += rightmax - height[right];
        		}
        		--right;
        	}
        }
        return ans;
    }
};