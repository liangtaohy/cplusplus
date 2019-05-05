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
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) {
        TreeNode* cur = NULL;
        postTraverse(root, p, q, &cur);
        return cur;
    }
private:
    int postTraverse(TreeNode* root, TreeNode* p, TreeNode* q, TreeNode** cur) {
        if (!root) return 0;
        if (*cur) return 0;
        int left = postTraverse(root->left, p, q, cur);
        int right = postTraverse(root->right, p, q, cur);
        int mid = (root->val == p->val) || (root->val == q->val) ? 1 : 0;
        
        if (left+right+mid>=2) {
            *cur = root;
        }
        
        return (left+right+mid) > 0 ? 1 : 0;
    }
};