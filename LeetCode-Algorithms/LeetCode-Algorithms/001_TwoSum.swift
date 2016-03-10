//
//  001_TwoSum.swift
//  LeetCode-Algorithms
//
//  Created by nestorgt on 07/03/16.
//  Copyright © 2016 nestorgt. All rights reserved.
//

/* #1 Two Sum - Medium - https://leetcode.com/problems/two-sum/

- QUESTION

Given an array of integers, return indices of the two numbers such that they add up to a specific target.
    
You may assume that each input would have exactly one solution.
    
Example:
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
    UPDATE (2016/2/13):
The return format had been changed to zero-based indices. Please read the above updated description carefully.

- SOLUTION

O(n^2) runtime, O(1) space – Brute force:

The brute force approach is simple. Loop through each element x and find if there is another value that equals to target – x. As finding another value requires looping through the rest of array, its runtime complexity is O(n2).

O(n) runtime, O(n) space – Hash table:

We could reduce the runtime complexity of looking up a value to O(1) using a hash map that maps a value to its index.
*/

import Foundation

struct _001_TwoSum {
    
    /** t = O(n), s = O(n)
     loop through the array and save in a dictionary the number from the array as key, and the index in the array as value "[number : inIndex]". That way we are able to ask the dictionary if we have seen before the number that we are looking for.
     */
    static func twoSum(nums: [Int], target: Int) -> [Int] {
        var dictionary = [Int : Int]() // [numberFromNums : indexInNums]
        for i in 0..<nums.count {
            let requiredNumber: Int = target - nums[i]
            if let indexInNums: Int = dictionary[requiredNumber] {
                return [indexInNums, i]
            } else {
                dictionary[nums[i]] = i
            }
        }
        return []
    }
}