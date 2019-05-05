/**
 * Definition for singly-linked list.
 */
struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};

class Solution {
public:
    ListNode* reverseList(ListNode* head) {
    	if (!head) {
    		return head;
    	}

        ListNode** p = &head;
        ListNode* cur = head->next;

        head->next = NULL;

        ListNode* tmp = NULL;

        while(q) {
        	tmp = cur->next;
        	cur->next = *p;
        	p = &cur;
        	cur = tmp;
        }

        return head;
    }
};