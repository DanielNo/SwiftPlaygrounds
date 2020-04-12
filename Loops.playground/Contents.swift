//: Playground - noun: a place where people can play

import UIKit

var nums = [1,2,3,4]

// For loop with Range
for num in 0...2{
}

for num in 0..<10{
}

// For loop with index and element
for (index,element) in nums.enumerated(){
//    print("\(index) \(element)")
}


let names = ["john","mary","paul","wendy"]

for name in names{
//    print("welcome \(name)!")
}

func compareTwoIndices(_ arr : [Int]){
    
    for i in 0..<arr.count-1{
        print("\(arr[i]) vs \(arr[i+1])")
    }
    
}
compareTwoIndices(nums)

let str : [Character] = Array(repeating: "a", count: 500)

// Typically used for finding pairs in a sorted array. Here for example, we are searching for a target sum of two numbers, which is a pair of numbers.
func twoPointers(_ arr : [Int], target : Int) -> (Int,Int){
    var i = 0
    var j = arr.count-1
    
    while i < j{
        let sum = arr[i] + arr[j]
        if sum == target{
            return (i,j)
        }else if(sum > target){
            j-=1
        }else if(sum < target){
            i+=1
        }
        
    }
    return (0,0)
}

twoPointers([1,2,4,4,5,6], target: 7)
