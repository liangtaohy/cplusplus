/**
 * Given a binary tree and a sum, determine if the tree has a root-to-leaf path
 * such that adding up all the values along the path equals the given sum.
 */

/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode(int x) : val(x), left(NULL), right(NULL) {}
 * };
 */
class Solution {
public:
    bool hasPathSum(TreeNode* root, int sum) {
        if (!root) return false;
        
        sum = sum - root->val;
        
        if (!root->left && !root->right) {
            return !sum;
        }
        
        bool left = hasPathSum(root->left, sum);
        bool right = hasPathSum(root->right, sum);
        return left || right;
    }
};