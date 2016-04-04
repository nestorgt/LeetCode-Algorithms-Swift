//
//  004_MedianOfTwoSortedArraysTests.swift
//  LeetCode-Algorithms
//
//  Created by nestorgt on 17/03/16.
//  Copyright © 2016 nestorgt. All rights reserved.
//

import XCTest
@testable import LeetCode_Algorithms

class _004_MedianOfTwoSortedArraysTests: XCTestCase {
    
    func testMedianOfTwoSortedArrays_empty1() {
        let nums1: [Int] = []
        let nums2: [Int] = [1]
        let expected: Double = 1.0
        
        let result = _004_MedianOfTwoSortedArrays().findMedianSortedArrays(nums1, nums2)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testMedianOfTwoSortedArrays_empty2() {
        let nums1: [Int] = [1]
        let nums2: [Int] = []
        let expected: Double = 1.0
        
        let result = _004_MedianOfTwoSortedArrays().findMedianSortedArrays(nums1, nums2)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testMedianOfTwoSortedArrays_impar() {
        let nums1: [Int] = [1,2]
        let nums2: [Int] = [3,4,5]
        let expected: Double = 3
        
        let result = _004_MedianOfTwoSortedArrays().findMedianSortedArrays(nums1, nums2)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testMedianOfTwoSortedArrays_impar2() {
        let nums1: [Int] = [1,2,3,4,7]
        let nums2: [Int] = [0,5,6,9]
        let expected: Double = 4
        
        let result = _004_MedianOfTwoSortedArrays().findMedianSortedArrays(nums1, nums2)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testMedianOfTwoSortedArrays_pair() {
        let nums1: [Int] = [1,2,3,4,7,10]
        let nums2: [Int] = [0,5,6,9]
        let expected: Double = 4.5
        
        let result = _004_MedianOfTwoSortedArrays().findMedianSortedArrays(nums1, nums2)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testMedianOfTwoSortedArrays_pair2() {
        let nums1: [Int] = [0,5,6,9]
        let nums2: [Int] = [1,2,3,4,7,10]
        let expected: Double = 4.5
        
        let result = _004_MedianOfTwoSortedArrays().findMedianSortedArrays(nums1, nums2)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testMedianOfTwoSortedArrays_emptyLarge() {
        let nums1: [Int] = []
        let nums2: [Int] = [1,2,3,4,7,10]
        let expected: Double = 3.5
        
        let result = _004_MedianOfTwoSortedArrays().findMedianSortedArrays(nums1, nums2)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testMedianOfTwoSortedArrays_sameNumbers() {
        let nums1: [Int] = []
        let nums2: [Int] = [1,1,1,1,1,1]
        let expected: Double = 1
        
        let result = _004_MedianOfTwoSortedArrays().findMedianSortedArrays(nums1, nums2)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testMedianOfTwoSortedArrays_EmptyArrays() {
        let nums1: [Int] = []
        let nums2: [Int] = []
        let expected: Double = 0.0
        
        let result = _004_MedianOfTwoSortedArrays().findMedianSortedArrays(nums1, nums2)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
}
