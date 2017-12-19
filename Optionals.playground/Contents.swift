//: Playground - noun: a place where people can play

import UIKit

// Implicitly unwrapped optional : ! aka Bang operator, don't do this because it is dangerous
let implicitOptional : String? = "hello world"
print(implicitOptional!) // failure to unwrap will crash the application

// Nil coalescing operator : ?
var anOptional : Int? = nil
// The optional value is nil so a default value is assigned
let defValue = anOptional ?? 0
print(defValue)

// ternary operator
let boolStatement = true
let ternaryValue = boolStatement ? 4 : 2
print(ternaryValue)

let optionalStr : String? = "nil"
let printedStr = (optionalStr != nil) ? optionalStr! : ""
print(printedStr)

class TestClass{
    var member : String?
}
var testClass : TestClass?
testClass = TestClass()
//testClass = nil
testClass?.member = "hello"
print(testClass?.member)
