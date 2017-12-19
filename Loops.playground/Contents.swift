//: Playground - noun: a place where people can play

import UIKit

var nums = [1,2,3,4]

// For loop with Range
for num in 0...2{
print("hello")
}

for num in 0..<10{
print(num)
}

// For loop with index and element
for (index,element) in nums.enumerated(){
    print("\(index) \(element)")
}


let names = ["john","mary","paul","wendy"]

for name in names{
    print("welcome \(name)!")
}

