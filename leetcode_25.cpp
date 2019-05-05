struct ListNode
{
	int val;
	ListNode* next;
	ListNode(int x):val(x), next(NULL) {}
};

class Solution {
public:
	ListNode* reverseKGroup(ListNode* head, int k) {
		if (!head || k == 1) {
			return head;
		}

		ListNode dummy(-1);
		ListNode* preHeader = &dummy;
		ListNode* cur = head, *n = cur->next;

		int num = 0;
		preHeader->next = head;

		while(head) {
			++num;
			head = head->next;
		}

		head = preHeader;

		while(cur && num>=k) {
			for(int i = 1; i < k; i++) {
				ListNode* tmp = cur->next;
				cur->next = tmp->next;
				tmp->next = head->next;
				head->next = tmp;
			}

			head = cur;
			cur = cur->next;
			num-=k;
		}

		return preHeader->next;
	}
}