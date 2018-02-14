//: Playground - noun: a place where people can play

import UIKit


// Sieve of eratosthenes algo to find prime numbers
func findPrimes(_ target : Int) -> [Int]{
    var nums = [Int]()
    for num in 2...target{
        nums.append(num)
    }
    for n in 2...target/2{
        nums = nums.filter({ (i) -> Bool in
            return i % n != 0 || i == n
        })
        print(nums)
    }
    return nums
}


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


//findPrimesBrute(100)
findPrimes(100)
