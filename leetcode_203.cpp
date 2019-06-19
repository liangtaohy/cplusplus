/*
Remove all elements from a linked list of integers that have value val.

Example:

Input:  1->2->6->3->4->5->6, val = 6
Output: 1->2->3->4->5
 */

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
    ListNode* removeElements(ListNode* head, int val) {
        ListNode dummy(0);
        dummy.next = head;

        ListNode* p = &dummy;
        
        while(p->next) {
            if (p->next->val == val) {
                ListNode* tmp = p->next;
                p->next = tmp->next;
                delete tmp;
            } else {
                p = p->next;
            }
        }
        return dummy.next;
    }
};