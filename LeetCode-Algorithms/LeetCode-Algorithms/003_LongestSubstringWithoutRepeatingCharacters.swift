//
//  003_LongestSubstringWithoutRepeatingCharacters.swift
//  LeetCode-Algorithms
//
//  Created by nestorgt on 14/03/16.
//  Copyright © 2016 nestorgt. All rights reserved.
//

/* #3 Longest Substring Without Repeating Characters - Medium - https://leetcode.com/problems/longest-substring-without-repeating-characters/

- QUESTION

Given a string, find the length of the longest substring without repeating characters. For example, the longest substring without repeating letters for "abcabcbb" is "abc", which the length is 3. For "bbbbb" the longest substring is "b", with the length of 1.

- SOLUTION

Loop through string and use a hashmap to save positions of caracters already seen.
When the new character is in the hashmap and it's in a valid position (startIndex > characterIndex) reset.
t = O(N), s = O(1)
*/

import Foundation

struct _003_LongestSubstringWithoutRepeatingCharacters {
    
    struct SubstringHelper {
        var startIndex: Int = 0
        var endIndex: Int = 0
        var mapper = [Character : Int]() // [char : position]
        var size: Int {
            get {
                return endIndex - startIndex + 1
            }
        }
    }

    static func lengthOfLongestSubstring(s: String) -> Int {
        guard s.characters.count > 0 else {
            return 0
        }
        var longestString: SubstringHelper = SubstringHelper(startIndex: 0, endIndex: 0, mapper: [Character : Int]())
        var currentString: SubstringHelper = SubstringHelper(startIndex: 0, endIndex: 0, mapper: [Character : Int]())
        var currentIndex = 0
        for c in s.characters {
            if let indexOfChar: Int = currentString.mapper[c]
                where indexOfChar >= currentString.startIndex {
                if currentString.size > longestString.size {
                    longestString = currentString
                }
                currentString.endIndex = currentIndex
                currentString.startIndex = indexOfChar + 1
            }
            currentString.mapper[c] = currentIndex
            currentString.endIndex = currentIndex
            currentIndex += 1
        }
        
        if currentString.size > longestString.size {
            longestString = currentString
        }
        return longestString.size
    }
}