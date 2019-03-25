/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */

struct ListNode
{
	int val;
	ListNode *next;
	ListNode(int x): val(x), next(NULL) {}
};

class Solution
{
public:
	ListNode* mergeTwoLists(ListNode* l1, ListNode* l2)
	{
		if (!l1) return l2;
		if (!l2) return l1;

		// l3 is the sorted list's header
		ListNode* l3 = NULL;

		if (l1->val < l2->val) {
			l3 = l1;
			l1 = l1->next;
		} else {
			l3 = l2;
			l2 = l2->next;
		}

		ListNode* tail = l3;

		while(l1 && l2) {
			if (l1->val < l2->val) {
				tail->next = l1;
				l1 = l1->next;
			} else {
				tail->next = l2;
				l2 = l2->next;
			}
			tail = tail->next;
		}
		tail->next = l1 ? l1 : l2;
		return l3;
	}
};