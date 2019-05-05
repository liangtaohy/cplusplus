/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */

class Solution {
public:
	ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
		ListNode dummy(0);

		ListNode* p = l1, *q = l2, *cur = &dummy;
		int carry = 0;

		int x = 0;
		int y = 0;
		int v = 0;

		while(p || q) {
			x = p ? p->val : 0;
			y = q ? q->val : 0;

			v = x + y + carry;
			carry = v / 10;

			cur->next = new ListNode(v % 10);
			cur = cur->next;
			
			if (p) p = p->next;
			if (q) q = q->next;
		}

		if (carry) {
			cur->next = new ListNode(1);
		}

		return dummy.next;
	}
}