//: Playground - noun: a place where people can play

import UIKit

// High Order Functions : Map, Reduce, Filter,


let arr = [1,2,3,4,5]

///////////////////////////////////////////
// Map : Loops over a collection and applies the same operation to each element in the collection.
///////////////////////////////////////////

let x = arr.map {
    $0 + 1
}
print(x)

let pizzaTypes = ["cheese", "pepperoni", "spinach", "sausage"]
pizzaTypes.map { (pizzas) -> String in
    pizzas + " pizza"
}


let dupeNums = [1,2,2,3,3,3,4,4,4,4,5]

func occurenceOfNumbers(nums : [Int]) -> Int {
    let target = nums.count/2
    var dict = [Int:Int]()
    var majority = 0
    nums.map {
        if let val: Int = dict[$0]  {
            if(val+1 > target){
                majority = $0
            }
            else{
                dict[$0] = val+1
            }
        } else {
            dict[$0] = 1
        }
    }
    return majority
}
let test = [3,2,3]
occurenceOfNumbers(nums: dupeNums)
occurenceOfNumbers(nums: test)


///////////////////////////////////////////
// Reduce : Combines all items in a collection to create a single value.
///////////////////////////////////////////

// Math operations all elements
arr.reduce(0,-)
arr.reduce(0,+)
arr.reduce(2000,/)
arr.reduce(1,*)




///////////////////////////////////////////
// Filter : Loop over a collection and return an Array returning those that match a condition
///////////////////////////////////////////

// Filter even numbers
let nums = Array(1...10)
let evenNums = nums.filter { (num) -> Bool in
   return num % 2 == 2
}

// Filter odd numbers
let oddNums = nums.filter { (num) -> Bool in
    num % 2 == 1
}
print(oddNums)

// Look for size == 1 strings
let chars = ["a","b","c","pizza","cat","doge","y"]
print(chars.filter { (singleCharacter) -> Bool in
    singleCharacter.characters.count == 1
})

// Look for strings that contain vowel
let states = ["MA","ME","MD","NY","TX","MN","VA","FL","AL","AK"]
let vowels : [String] = ["A","E","I","O","U"]

func containsVowel(str : String) -> Bool{
    for (i,vowel) in vowels.enumerated(){
        if str.contains(vowel) {
            return true
        }
    }
    return false
}
states.filter(containsVowel)

///////////////////////////////////////////
// FlatMap : flatten a collection of collections
///////////////////////////////////////////
let collections = [[5,2,7],[4,8],[9,1,3]]
let flat = collections.flatMap { $0 }
// [5, 2, 7, 4, 8, 9, 1, 3]


let dict = ["a" : 1, "b":2 ,"c":3 ,"d":4]
let dict2 = ["e" : 2]
let dict3 = [dict,dict2]
let dict4 = dict3.flatMap { $0 }
print(dict4)

///////////////////////////////////////////
// Foreach : A closure that takes an element of the sequence as a parameter.
///////////////////////////////////////////


let nums2 = [10,11,12,13,14]
nums2.forEach {
    print($0)
}

///////////////////////////////////////////
// Chaining high order functions
///////////////////////////////////////////


// Get the sum of all even numbers within array
let sumOfEvens = nums.filter { $0 % 2 == 0}.reduce(0,+)
print(sumOfEvens)





