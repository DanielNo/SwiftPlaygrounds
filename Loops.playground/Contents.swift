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
