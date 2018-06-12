//: Playground - noun: a place where people can play

import UIKit

// String to Array
let characters = Array("hello world")
let first = characters[0]



// SubArray using ArraySlice
let arr = [1,2,3,4]
// subArraySlice is of type ArraySlice, which shares the same interface as Array
let subArraySlice = arr[0...2]

//Cast ArraySlice to a normal array
let subArray = Array(subArraySlice)
