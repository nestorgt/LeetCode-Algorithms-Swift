//
//  002_AddTwoNumbers.swift
//  LeetCode-Algorithms
//
//  Created by nestorgt on 10/03/16.
//  Copyright © 2016 nestorgt. All rights reserved.
//

/* #2 Add Two Numbers - Medium - https://leetcode.com/problems/add-two-numbers/

- QUESTION

You are given two linked lists representing two non-negative numbers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8

- SOLUTION

*/

import Foundation


// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    public init(val: Int, next: ListNode?) {
        self.val = val
        self.next = next
    }
}

struct _002_AddTwoNumbers {
    
    static func addTwoNumbers(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return nil
    }
}