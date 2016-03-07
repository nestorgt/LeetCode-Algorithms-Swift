//
//  001_TwoSumTests.swift
//  LeetCode-Algorithms
//
//  Created by nestorgt on 07/03/16.
//  Copyright © 2016 nestorgt. All rights reserved.
//

import XCTest
@testable import LeetCode_Algorithms

class _001_TwoSumTests: XCTestCase {
    
    func testTwoSum() {
        let nums = [2, 7, 11, 15]
        let target = 9
        let expected = [0, 1]
        
        let result = _001_TwoSum.twoSum(nums, target: target)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testTwoSum_Negatives() {
        let nums = [2, 7, 11, 15, 1 , 16, -4, -8, -10]
        let target = -18
        let expected = [7, 8]
        
        let result = _001_TwoSum.twoSum(nums, target: target)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testTwoSum_BigNumbers() {
        let nums = [2213213123, 7123123123123, 1123123123121, 145365465, 176587658765 , 1657875686, -76587658654, -78576568, -15678567876587650]
        let target = 1123044546553
        let expected = [2, 7]
        
        let result = _001_TwoSum.twoSum(nums, target: target)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testTwoSum_BigArray() {
        let nums = [2, 7, 11, 15, 1 , 16, -4, -8, -10, 12, 56, 20, 21, 28, 19, 21, 0, 6, 432, 2, 343, 18, -2, -4, 10, 100, 1000, 76, 45, -34, 2, 7, 11, 15, 1 , 16, -4, -8, -10, 12, 56, 20, 21, 28, 19, 21, 0, 6, 432, 2, 343, 18, -2, -4, 10, 100, 1000, 76, 45, -34]
        let target = 2000
        let expected = [26, 56]
        
        let result = _001_TwoSum.twoSum(nums, target: target)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
}
