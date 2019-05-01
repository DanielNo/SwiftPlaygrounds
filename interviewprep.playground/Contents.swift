//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let myClosure : (Int,Int) -> Int = {
(a,b) in
    return a + b
}
myClosure(1,2)


func aClosureFunction(closure : @escaping (Int,Int) -> Int) {
closure(1,2)
}

aClosureFunction { (a, b) -> Int in
    return a * b
}

let x : Int? = 2

if x != nil {
    print(x!)
}

func doStuff(num : Int?) -> Int?{
    guard num != nil else{
     return num
    }
    return num!
}
doStuff(num: x)

func genFunc<T>(variable : T?) -> T?{
    if variable != nil{
    return variable!
    }
    return variable
}

