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

// Insertion Sort

func insertionSort(numsArray : [Int]) -> [Int]{
    guard numsArray.count > 1 else{
        return numsArray
    }
    var nums = numsArray
    var j = 1
    for i in 1..<nums.count{
        let key = nums[i]
        j=i
        while (j > 0 && nums[j-1] > key) {
            nums[j] = nums[j-1]
            j-=1
        }
        
        nums[j] = key
        print("val : \(nums[i]) index : \(i) j : \(j)")
    }
    return nums
}

// Quickselect sort
// Pick a kth element, find the index of it within the array

func partition(nums : [Int],left : Int, right : Int, kthIndex : Int) -> [Int]{
    let pos = rank(nums: nums, k: kthIndex)
    var numArr = nums
    let kthElement = numArr[pos]
    numArr[pos] = numArr[kthIndex]
    numArr[kthIndex] = kthElement

    
    var left = [Int]()
    var right = [Int]()
    for num in numArr{
        if num < numArr[kthIndex] {
//            print("appending \(num)")
            left.append(num)
        }else if(num > numArr[kthIndex]){
            right.append(num)
        }
    }
    
    print("num arr : \(numArr) kth : \(kthIndex) pos : \(pos)")

    return left + [kthElement] + right
}

// Find the index of number k
func rank(nums : [Int],k : Int) -> Int{
    
    let randomPivot = nums[k]
    print("Kth number : \(k) pivot array value : \(randomPivot)")
    var position = 0
    for num in nums {
        if num < randomPivot{
            position+=1
        }
    }
    
        return position
}

rank(nums: [95,33,22,55,44,84,12,100,30,45,43], k: 5)
// 12,22,30,43,44,45,55,84,95,100
// 95,33,22,55,44,84,12,100,30,45,43

/*  Lomuto's Quicksort (in-place sort) :
 
 */

/*  Hoare's Quicksort (easier to implement) :
    Create subarrays of values that are less than, equal to, and greater than the
    pivot. Recursively call quick sort by adding these subarrays
 */

func hQuickSort(numArray : [Int]) -> [Int] {
    
    if numArray.count <= 1 {
        return numArray
    }
    

    let pivot = numArray.last!
    let lower = numArray.filter { return $0 < pivot}
    let mid = numArray.filter { return $0 == pivot}
    let high = numArray.filter { return $0 > pivot}

    return hQuickSort(numArray: lower) + mid + hQuickSort(numArray: high)
}

//returns index of pivot in partitioned array
func lomutoPartition(numArray : [Int]) -> Int{
    var nums = numArray
    let pivot = nums.last!
    print("pivot : \(pivot)")
    var i = 0
    
    for j in 0..<nums.count-1{
        if nums[j] <= pivot{
            (nums[i],nums[j]) = (nums[j],nums[i])
            print("hi")
            i+=1
            
            print(nums)
            
        }else{
            
        }
        print(j)
    }
    
    return i

}

func lQuickSort(nums : inout [Int]){
    
    
}

var arr = [7,2,1,8,6,3,5,4]
lomutoPartition(numArray: arr)
//////////////////////////////////////////////////////
// Testing the implementation
//////////////////////////////////////////////////////

var testCase1 = [22,10,8,4,2,6]
var testCase2 = [9,4,2,77,55,55]
var testCase3 = [1,2,6,4,9,9,9,33,1]
var testCase4 = [10,10,1,10,10]
var testCase5 = [10,10,6,6,10]
var testCase6 = [8,3,1,7,0,10,2]
partition(nums: testCase1, left: 0, right: 6, kthIndex: 3)
//quickSort(numArr: testCase3)
//let x = quickSort(numArr: testCase6)
let x = hQuickSort(numArray: testCase3)



//bubbleSort(numberArray: testCase1)
//bubbleSort(numberArray: testCase2)
//bubbleSort(numberArray: testCase3)
//bubbleSort(numberArray: testCase4)
//bubbleSort(numberArray: testCase5)

//mergeSort(nums: testCase1)
//mergeSort(nums: testCase2)
//mergeSort(nums: testCase3)
//mergeSort(nums: testCase4)
//mergeSort(nums: testCase5)

//insertionSort(numsArray: [3,2,1,4,5])
//insertionSort(numsArray: [5,3,9,4,5])

