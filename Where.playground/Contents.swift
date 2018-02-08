//: Playground - noun: a place where people can play

import UIKit

// For Loops
let nums = [1,2,3,4,5,6,7,8,9,10]

for num in nums where num%2 == 0 {
    print(num)
}

let words = ["dog","cat","cow","pig"]

for word in words where word.contains("o"){
}

let arr = [1,2,3,4]
let dict = [1:"one", 2:"two"]

for num in arr where dict[num] != nil {
print(num)
}

// While Loops
var mutableArray:[Int]? = []
while let arr = mutableArray, arr.count < 5 {
    mutableArray?.append(0) // [0,0,0,0,0]
}

// throwing function errors
enum ResponseError: Error {
    case HTTP(Int)
}

func errorProne() throws {
    throw ResponseError.HTTP(404)
}

do {
    try errorProne()
} catch ResponseError.HTTP(let code) where code >= 400 && code % 2 == 0 {
    print("Bad Request") // match
} catch ResponseError.HTTP(let code) where code >= 500 && code < 600  {
    print("Internal Server Error")
}



// Guard Statements
let string:String? = "checkmate"

//guard let str = string where str != "checkmate" else {
//    return
//}
print("let's play")


// Switch Statements
func fizzBuzz(_ n: Int) -> [String] {
    var fizzbuzz = [String]()
    fizzbuzz.reserveCapacity(n)
        for i in 1...n{
            switch i {
            case _ where i % 15 == 0:
                fizzbuzz.append("fizzbuzz")
            case _ where i % 3 == 0:
                fizzbuzz.append("fizz")
            case let x where x % 5 == 0:
                fizzbuzz.append("buzz")
            default:
                fizzbuzz.append(String(i))
            }
        }
    return fizzbuzz
}

fizzBuzz(16)



// Generic function type
func genericFunction<S: CustomStringConvertible>(string: S) {
    print(string)
}

genericFunction(string: "hiiii")
