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

typealias SumCarriage = (sum: Int, carriage: Int)

struct _002_AddTwoNumbers {

    /** t = O(n), s = O(1)
     loop through both list nodes, make the sum and save carriage that will be applied to next sum
    */
    static func addTwoNumbers(var l1: ListNode?, var _ l2: ListNode?) -> ListNode? {
        guard l1 != nil || l2 != nil else {
            return nil
        }
        var sumCarriage: SumCarriage = sumList(n1: l1!.val, n2: l2!.val)
        var listNode: ListNode? = ListNode(sumCarriage.sum)
        var prevCarriage: Int = sumCarriage.carriage
        let result = listNode
        
        while l1?.next != nil && l2?.next != nil {
            l1 = l1!.next
            l2 = l2!.next
            let sumCarriage: SumCarriage = sumList(n1: l1!.val, n2: l2!.val, prevCarriage: prevCarriage)
            listNode!.next = ListNode(sumCarriage.sum)
            prevCarriage = sumCarriage.carriage
            listNode = listNode!.next
        }
        
        return result
    }
    
    static func sumList(n1 n1: Int, n2: Int, prevCarriage: Int = 0) -> SumCarriage {
        let tempSum = n1+n2+prevCarriage
        let sum = tempSum >= 10 ? (tempSum)%10 : tempSum
        let carriage = tempSum >= 10 ? (tempSum)/10 : 0
        return (sum, carriage)
    }
}