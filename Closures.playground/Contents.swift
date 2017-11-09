//: Playground - noun: a place where people can play

import UIKit

var noParametersOrReturnType: () -> () = {
    print("I have no parameters or return values")
}
noParametersOrReturnType()

var noParametersAndOneReturnType: () -> String = {
    return "Hello World"
}
noParametersAndOneReturnType()

var oneParameterAndOneReturnType: (String) -> String = {
    a in
    return a + " world"
}
oneParameterAndOneReturnType("hello")

// Full notation
var multipleParametersAndOneReturnLongVersion: (String, String) -> String = {
    (param1,param2) -> String in
    return param1 + " " + param2
}
multipleParametersAndOneReturnLongVersion("hello","world")

//Shortened notation
var multipleParamsAndOneReturnShort : (String, String) -> String = {
return $0 + $1
    
}
multipleParamsAndOneReturnShort("hello","world")

var oneParamAndTupleReturn : (Int) -> (Int,Int) = {
    num in
    return (num,num)
}
oneParamAndTupleReturn(1)

// Inferred types
var inferredClosure = { (param1 : String) -> String in
    return param1 + " world"
    
}
inferredClosure("hello")

var gameScores = [1,5,3223,939,3299,292,505,401,393]
let sorted = gameScores.sorted { (a, b) -> Bool in
    return a > b
}
print(sorted)

let sortedShort = gameScores.sorted { return $0 > $1
}
print(sortedShort)

//func someFunctionWithEscapingClosure(completion : @escaping () -> ([String:String],Error))
//{
//    let error = Error()
//    completion(["key":"val"],error)
//}
//someFunctionWithEscapingClosure { () -> ([String : String], Error) in
//
//}

func workHard(enterDoStuff: (Bool) -> Void) {
    // Replicate Downloading/Uploading
    for _ in 1...1000 {
        print("👷🏻‍👷🏻👷🏽👷🏽️👷🏿‍️👷🏿")
    }
    enterDoStuff(true)
}

func someFunctionWithEscapingClosure(completionHandler: @escaping ([String:String]) -> String) {
    let data = Data()
    let dict = ["a" : "1", "b" : "2"]
    completionHandler(dict)

}
someFunctionWithEscapingClosure {dict -> String in
    print(dict)
    return "hello world"
}
