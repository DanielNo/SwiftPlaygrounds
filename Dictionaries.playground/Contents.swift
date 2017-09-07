//: Playground - noun: a place where people can play

import UIKit

let nums = [1,2,2,3,3,3,4,4,4,4,5]

func occurenceOfNumbers(_nums : [Int]) -> [Int : Int]{
    var dict = [Int:Int]()
    nums.map {
        if let val: Int = dict[$0]  {
        dict[$0] = val+1
        } else {
        dict[$0] = 1
        }
    }
    return dict
}

occurenceOfNumbers(_nums: nums)