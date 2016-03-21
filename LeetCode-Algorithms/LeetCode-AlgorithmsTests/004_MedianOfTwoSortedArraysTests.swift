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
        let nums1 = [1,2,3,4,5]
        let nums2 = [6,7,8,9,10]
        let expected = Double(3+8/2)
        
        let result = _004_MedianOfTwoSortedArrays().findMedianSortedArrays(nums1, nums2)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }

}
