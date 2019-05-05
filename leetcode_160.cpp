/**
 * Write a program to find the node at which the intersection of two singly linked lists begins.
 */

class Solution {
public:
	int length(ListNode *head) {
		int len = 0;
		while(head) {
			len++;
			head = head->next;
		}
		return len;
	}

	ListNode *getIntersectionNode(ListNode *headA, ListNode *headB) {
		if (!headA || !headB) {
			return NULL;
		}

		int alen = length(headA);
		int blen = length(headB);
		int d = abs(alen - blen);

		ListNode *p=NULL, *q=NULL;

		if (alen > blen) {
			p = headB;
			q = headA;
		} else {
			p = headA;
			q = headB;
		}

		while(d-- && q) {
			q = q->next;
		}

		while(p && q && p != q) {
			q = q->next;
			p = p->next;
		}

		return p;
	}
};