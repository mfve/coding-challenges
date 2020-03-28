# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    node1 = l1
    node2 = l2
    sum = []
    carry_over = 0
    
    while (node1 != nil || node2 != nil || carry_over != 0)
        val1 = node1&.val || 0
        val2 = node2&.val || 0
        added_value = (val1 + val2 + carry_over)
        carry_over = (added_value - 10 >= 0) ? (added_value/10).floor : 0
        added_value = (added_value - carry_over*10) unless carry_over.zero?
        
        sum << added_value
        node1 = node1.next unless node1.nil?
        node2 = node2.next unless node2.nil?
    end
    
    sum
end