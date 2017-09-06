//: Playground - noun: a place where people can play

import UIKit


var nums = [1,2,3,4,5]

// Move first value in array to the end
for var i in 0..<nums.count{
    if (i < nums.count-1) {
        swap(&nums[i], &nums[i+1])
    }
    print(nums)
}

print(nums)
