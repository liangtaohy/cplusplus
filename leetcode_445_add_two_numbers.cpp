#include<iostream>

struct ListNode {
	int val;
	ListNode* next;
	ListNode(int x):val(x), next(NULL) {}
};

class Solution
{
public:
	ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
		int lenL1 = listLength(l1);
		int lenL2 = listLength(l2);
		if (lenL1>lenL2) {
			return addTwoNumbers(l1, lenL1, l2, lenL2);
		} else {
			return addTwoNumbers(l2, lenL2, l1, lenL1);
		}
	}

private:
	ListNode* addTwoNumbers(ListNode* l1, int lenL1, ListNode* l2, int lenL2) {
		ListNode* head = l1;
		ListNode* p = l1;
		ListNode* q = l2;
		ListNode* tail = NULL;

		for (int i = 0; i < lenL1 - lenL2; i++) {
			p = p->next;
		}

		while(p && q) {
			p->val += q->val;
			if (p->val >= 10) {
				tail = p;
			}

			p = p->next;
			q = q->next;
		}

		while(tail && tail != head) {
			ListNode* parent = head;
			p = head->next;

			while(p!=tail) {
				if (p->val>=10) {
					p->val = p->val - 10;
					parent->val += 1;
				}
				p = p->next;
				parent = parent->next;
			}

			if (p->val>=10) {
				p->val -= 10;
				parent->val += 1;
			}

			tail = parent;
		}

		if (head->val >=10) {
			head->val -= 10;
			l2->next = head;
			*(&head) = l2;
			head->val = 1;
		}

		return head;
	}

	int listLength(ListNode* l) {
		int len = 0;
		while(l) {++len;l=l->next;}
		return len;
	}
};