//
//  004_MedianOfTwoSortedArrays.swift
//  LeetCode-Algorithms
//
//  Created by nestorgt on 17/03/16.
//  Copyright © 2016 nestorgt. All rights reserved.
//

/* #4 Median of Two Sorted Arrays - Hard - https://leetcode.com/problems/median-of-two-sorted-arrays/

- QUESTION

There are two sorted arrays nums1 and nums2 of size m and n respectively. Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

- SOLUTION

t = O(log(min(M,N))), s = O(1)
*/

import Foundation

struct _004_MedianOfTwoSortedArrays {
    
    func findMedianSortedArrays(nums1: [Int], _ nums2: [Int]) -> Double {
        let m = nums1.count
        let n = nums2.count
        
        guard m > 0 || n > 0 else {
            return 0.0
        }
        guard m <= n else {
            return findMedianSortedArrays(nums2, nums1)
        }
        
        var i_min = 0
        var i_max = m
        while i_min <= i_max {
            let i = (i_min + i_max) >> 1
            let j = ((m + n + 1) >> 1) - i
            if j > 0 && i < m && nums2[j-1] > nums1[i] {
                i_min = i + 1
            } else if i > 0 && j < n && nums1[i-1] > nums2[j] {
                i_max = i - 1
            } else {
                var num1: Int
                if i == 0 {
                    num1 = nums2[j-1]
                }
                else if j == 0 {
                    num1 = nums1[i-1]
                }
                else {
                    num1 = max(nums1[i-1], nums2[j-1])
                }
                
                if (m+n) & 1 != 0 {
                    return Double(num1)
                }
                
                var num2: Int
                if i == m {
                    num2 = nums2[j]
                } else if j == n {
                    num2 = nums1[i]
                } else {
                    num2 = min(nums1[i], nums2[j])
                }
                
                return Double((num1 + num2))/2.0
            }
        }
        return 0.0
    }
}

