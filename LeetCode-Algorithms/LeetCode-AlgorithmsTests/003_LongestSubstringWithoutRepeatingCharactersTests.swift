//
//  003_LongestSubstringWithoutRepeatingCharactersTests.swift
//  LeetCode-Algorithms
//
//  Created by nestorgt on 14/03/16.
//  Copyright © 2016 nestorgt. All rights reserved.
//

import XCTest
@testable import LeetCode_Algorithms

class _003_LongestSubstringWithoutRepeatingCharactersTests: XCTestCase {

    func testLengthOfLongestSubstring() {
        let string = "abcabcbb"
        let expected = 3 // "abc"
        
        let result = _003_LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(string)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }

}
