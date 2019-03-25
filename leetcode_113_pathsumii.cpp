/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode(int x) : val(x), left(NULL), right(NULL) {}
 * };
 */

class Solution
{
public:
	vector<vector<int>> pathSum(TreeNode* root, int sum)
	{
		vector<vector<int>> pathes;
		vector<int> path;
		findPath(root, sum, path, pathes);
	}

	void findPath(TreeNode* root, int sum, vector<int>& path, vector<vector<int>>& pathes)
	{
		if (!root) return;

		path.push_back(root);

		if (!root->left && !root->right && root->val == sum) {
			pathes.push_back(path);
			path.pop_back();
			return;
		}

		findPath(root->left, sum - root->val, path, pathes);
		findPath(root->right, sum - root->val, path, pathes);
		
		path.pop_back();
	}
};