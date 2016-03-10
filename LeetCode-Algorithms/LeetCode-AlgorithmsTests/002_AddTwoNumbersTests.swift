//
//  002_AddTwoNumbersTests.swift
//  LeetCode-Algorithms
//
//  Created by nestorgt on 10/03/16.
//  Copyright © 2016 nestorgt. All rights reserved.
//

import XCTest
@testable import LeetCode_Algorithms

class _002_AddTwoNumbersTests: XCTestCase {
    
    func linkedNodesWithNumbers(numbers: [Int]) -> ListNode {
        guard numbers.count != 0 else {
            return ListNode(0)
        }
        let listNode: ListNode = ListNode(numbers.first!)
        var lastNode = listNode
        for i in 1..<numbers.count {
            let newNode = ListNode(numbers[i])
            lastNode.next = newNode
            lastNode = newNode
        }
        return listNode
    }
    
    func testAddTwoNumbers() {
        // Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
        // Output: 7 -> 0 -> 8
        let l1: ListNode = linkedNodesWithNumbers([2,4,3])
        let l2: ListNode = linkedNodesWithNumbers([5,6,4])
        let expected: ListNode = linkedNodesWithNumbers([7,0,8])
        
        let result: ListNode? = _002_AddTwoNumbers.addTwoNumbers(l1, l2)
        
//        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
}
