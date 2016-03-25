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
    
    func test() {
        let nums1: [Int] = []
        let nums2: [Int] = [1]
        let expected: Double = 1.0
        
        let result = _004_MedianOfTwoSortedArrays().findMedianSortedArrays(nums1, nums2)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
}
