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

