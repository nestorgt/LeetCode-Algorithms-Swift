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
    
    func numbersFromLinkedNodes(listNode: ListNode?) -> [Int] {
        var numbers: [Int] = []
        var currentNode: ListNode? = listNode
        guard currentNode != nil else {
            return []
        }
        while currentNode!.next != nil {
            numbers.append(currentNode!.val)
            currentNode = currentNode!.next
        }
        numbers.append(currentNode!.val)
        return numbers
    }
    
    func isListNode(var listNode1: ListNode, var equalToListNode listNode2: ListNode) -> Bool {
        guard listNode1.val == listNode2.val else {
            return false
        }
        while listNode1.next != nil || listNode2.next != nil {
            if listNode1.next != nil {
                listNode1 = listNode1.next!
            }
            if listNode2.next != nil {
                listNode2 = listNode2.next!
            }
            guard listNode1.val == listNode2.val else {
                return false
            }
        }
        return true
    }
    
    func testSumList() {
        let n1 = 7
        let n2 = 8
        let expected: SumCarriage = (5, 1)
        
        let result = _002_AddTwoNumbers().sumList(n1: n1, n2: n2)
        
        XCTAssert(result.carriage == expected.carriage && result.sum == expected.sum, "result: \(result) - expected \(expected)")
    }
    
    func testSumList_With10() {
        let n1 = 4
        let n2 = 6
        let expected: SumCarriage = (0, 1)
        
        let result = _002_AddTwoNumbers().sumList(n1: n1, n2: n2)
        
        XCTAssert(result.carriage == expected.carriage && result.sum == expected.sum, "result: \(result) - expected \(expected)")
    }
    
    func testAddTwoNumbers() {
        let l1: ListNode = linkedNodesWithNumbers([2,4,3])
        let l2: ListNode = linkedNodesWithNumbers([5,6,4])
        let expected: ListNode = linkedNodesWithNumbers([7,0,8])
        
        let result: ListNode? = _002_AddTwoNumbers().addTwoNumbers(l1, l2)
        
        XCTAssert(isListNode(result!, equalToListNode: expected), "result: \(numbersFromLinkedNodes(result)) - expected: \(numbersFromLinkedNodes(expected))")
    }
    
    func testAddTwoNumbers_DifferentSize() {
        let l1: ListNode = linkedNodesWithNumbers([1,8])
        let l2: ListNode = linkedNodesWithNumbers([0])
        let expected: ListNode = linkedNodesWithNumbers([1,8])
        
        let result: ListNode? = _002_AddTwoNumbers().addTwoNumbers(l1, l2)
        
        XCTAssert(isListNode(result!, equalToListNode: expected), "result: \(numbersFromLinkedNodes(result)) - expected: \(numbersFromLinkedNodes(expected))")
    }
}
