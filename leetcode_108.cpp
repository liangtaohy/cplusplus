/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode(int x) : val(x), left(NULL), right(NULL) {}
 * };
 */
#include <vector>
#include <iostream>

using namespace std;

struct TreeNode {
	int val;
	TreeNode *left;
	TreeNode *right;
	TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
};

class Solution {
public:
	TreeNode* sortedArrayToBST(vector<int>& nums) {
		if (nums.empty()) {
			return nullptr;
		}

		int left = 0, right = nums.size() - 1;

		return _sortedArrayToBST(nums, left, right);
	}
private:
	TreeNode* _sortedArrayToBST(vector<int>& nums, int left, int right) {
		if (left > right) {
			return nullptr;
		}

		int mid = (left + right) / 2;
		TreeNode* root = new TreeNode(nums[mid]);
		root->left = _sortedArrayToBST(nums, left, mid - 1);
		root->right = _sortedArrayToBST(nums, mid + 1, right);
		return root;
	}
};

int main(void)
{
	vector<int> nums({1,2,3,4,5});

	Solution solution;

	TreeNode* root = solution.sortedArrayToBST(nums);
	char x[50];
	cin >> x;
	return 0;
}