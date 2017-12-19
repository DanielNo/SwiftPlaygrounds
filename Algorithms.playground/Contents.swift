//: Playground - noun: a place where people can play

import UIKit

// BubbleSort : Compare adjacent elements and continuously swap the smallest or largest to one side
func bubbleSort(numberArray : [Int]) -> [Int]{
    var nums = numberArray
    let size = nums.count

    for i in nums.enumerated(){
            for j in 0..<size {
//                print("j : \(j)")
                if (j+1 == size){
                    break
                }else{
                if nums[j] > nums[j+1] {
                    let temp = nums[j]
                    nums[j] = nums[j+1]
                    nums[j+1] = temp
                }
//                    print(nums)
            }
        }
    }
return nums
}

//  Merge Sort : Split array into halves, merge halves by comparing values with a seperate merge function

func mergeSort(nums : [Int]) -> [Int]{
    let count = nums.count
    guard count > 1 else{
     return nums
    }
    let mid = count / 2
        var firstHalf = Array(nums[0..<mid])
        var secondHalf = Array(nums[mid...])
//        print("first half : \(firstHalf)")
//        print("second half : \(secondHalf)")
         var sortedFirstHalf = mergeSort(nums: firstHalf)
         var sortedSecondHalf = mergeSort(nums: secondHalf)
        return merge(right: sortedFirstHalf, left: sortedSecondHalf)
    
}

func merge(right : [Int], left : [Int]) -> [Int]{
    var i = 0
    var j = 0
    let size1 = right.count
    let size2 = left.count
    var merged = [Int]()
    
    while i < size1 && j < size2 {
        if right[i] < left[j] {
            merged.append(right[i])
            i+=1
        }else if right[i] > left[j]{
            merged.append(left[j])
            j+=1
        }else{
            merged.append(right[i])
            merged.append(left[j])
            i+=1
            j+=1
        }
    }
    
    while i < size1 {
        merged.append(right[i])
        i+=1
    }
    while j < size2{
        merged.append(left[j])
        j+=1
    }
    
//        print("\(right) , \(left)\nmerged into: \(merged)")
    return merged
}

//////////////////////////////////////////////////////
// Testing the implementation
//////////////////////////////////////////////////////

var testCase1 = [22,10,8,4,2,6]
var testCase2 = [9,4,2,77,55,55]
var testCase3 = [1,2,6,4,9,9,9,33,1]
var testCase4 = [10,10,1,10,10]
var testCase5 = [10,10,6,6,10]

bubbleSort(numberArray: testCase1)
//bubbleSort(numberArray: testCase2)
//bubbleSort(numberArray: testCase3)
//bubbleSort(numberArray: testCase4)
//bubbleSort(numberArray: testCase5)

mergeSort(nums: testCase1)
mergeSort(nums: testCase2)
mergeSort(nums: testCase3)
mergeSort(nums: testCase4)
mergeSort(nums: testCase5)


