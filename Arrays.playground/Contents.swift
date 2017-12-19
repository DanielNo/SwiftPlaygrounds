//: Playground - noun: a place where people can play

import UIKit


var nums = [1,2,3,4,5,6]

// Subarray, result is of type arrayslice, which need to be casted to array
let mid = nums.count
let firstHalf = Array(nums[...mid])
let secondHalf = Array(nums[mid...])



