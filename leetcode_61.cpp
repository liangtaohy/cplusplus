/**
 * 61. Rotate List
 * Given a linked list, rotate the list to the right by k places, where k is non-negative.

Example 1:

Input: 1->2->3->4->5->NULL, k = 2
Output: 4->5->1->2->3->NULL
Explanation:
rotate 1 steps to the right: 5->1->2->3->4->NULL
rotate 2 steps to the right: 4->5->1->2->3->NULL
Example 2:

Input: 0->1->2->NULL, k = 4
Output: 2->0->1->NULL
Explanation:
rotate 1 steps to the right: 2->0->1->NULL
rotate 2 steps to the right: 1->2->0->NULL
rotate 3 steps to the right: 0->1->2->NULL
rotate 4 steps to the right: 2->0->1->NULL
 */

struct ListNode {
	int val;
	ListNode *next;
	ListNode(int x): val(x), next(nullptr) {}
};

class Solution {
public:
	ListNode* rotateRight(ListNode* head, int k) {
		if (!head || head->next == nullptr || k <= 0) return head;

		int len = 1;
		ListNode* p = head;
		ListNode* tail;

		while(p->next && ++len) { p = p->next; }

		tail = p;

		int n = k % len;
		if (n == 0) return head;
		p = head;

		len -= n;

		while(--len) p = p->next;

		ListNode* tmp = head;
		head = p->next;
		tail->next = tmp;
		p->next = nullptr;
		return head;
	}
};