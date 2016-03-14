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
    
    func testLengthOfLongestSubstringOneChar() {
        let string = "c"
        let expected = 1
        
        let result = _003_LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(string)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testLengthOfLongestSubstring2() {
        let string = "aab"
        let expected = 2
        
        let result = _003_LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(string)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testLengthOfLongestSubstring3() {
        let string = "aa"
        let expected = 1
        
        let result = _003_LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(string)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testLengthOfLongestSubstring4() {
        let string = ""
        let expected = 0
        
        let result = _003_LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(string)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
    
    func testLengthOfLongestSubstring5() {
        let string = "abba"
        let expected = 2
        
        let result = _003_LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(string)
        
        XCTAssert(result == expected, "result: \(result) - expected: \(expected)")
    }
}
