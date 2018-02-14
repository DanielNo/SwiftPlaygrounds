//: Playground - noun: a place where people can play

import UIKit


// Sieve of eratosthenes algorithm to find prime numbers (Syntax is ugly compared to C / Java style for loop...)
// 0 and 1 are not prime numbers
// Time complexity : O(n) linear
// Space complexity : O(n) linear
func findPrimes(_ target : Int) -> [Int]{
    var nums = Array(repeating: true, count: target+1)
    nums[0] = false
    nums[1] = false
    for i in 2...target{
        if nums[i] == false{
         continue
        }else{
            for index in stride(from: i, through: target, by: i){
                if index > i{
                    nums[index] = false
                }
            }
        }
    }
    var ans = [Int]()
    for (index,element) in nums.enumerated(){
        if element == true {
            ans.append(index)
        }
    }
    return ans
}

// Time complexity :
// Space complexity : O(n) linear
func findPrimesBrute(_ target : Int) -> [Int]{
    var nums = [Int]()
    for num in 2...target{
        nums.append(num)
    }
    for n in 2...target{
        nums = nums.filter({ (i) -> Bool in
                return i % n != 0 || i == n
        })
    }
    return nums
}


let x = findPrimesBrute(30)

let y = findPrimes(2000)


