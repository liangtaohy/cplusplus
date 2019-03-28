/**
 * 230. Kth Smallest Element in a BST
 * Given a binary search tree, write a function kthSmallest to find the kth smallest element in it.
 *
 * Note: 
 * You may assume k is always valid, 1 ≤ k ≤ BST's total elements.
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
	int inOrderTraverse(TreeNode* root, int& num, int k) {
		if (!root) {
			return 0;
		}
		int val = inOrderTraverse(root->left, num, k);
		if (num == k) {
			return root->val;
		}
		if (num >= k) {
			return val;
		}
		return inOrderTraverse(root->right, num, k);
	}

	int kthSmallest(TreeNode* root, int k) {
		int num = 0;
		return inOrderTraverse(root, num, k);
	}
};