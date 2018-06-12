//: Playground - noun: a place where people can play

import UIKit

//Structs are value types
//Classes are reference types

let aClass = ClassRef(value: 3)
// This is an invalid statement for a let constant
//aClass.immutableVal = 2
aClass.mutableVal = 3
aClass.mutableVal = 4
//aClass = ClassRef(value: 2)

var bClass = ClassRef(value: 2)
//bClass.immutableVal = 2
bClass.mutableVal = 3
bClass = ClassRef(value: 2)


print(aClass.mutableVal)



let aStruct = StructRef(value: 2)
// Both are invalid statements
//aStruct.mutableVal = 3
//aStruct.immutableVal = 3
//aStruct.mutableStr = "kaenf"
//aStruct = StructRef(value: 29)

var bStruct = StructRef(value: 2)
bStruct.mutableVal = 5
// This is invalid because struct member immutableVal is a let constant
//bStruct.immutableVal = 22
bStruct.mutableStr = "2"
bStruct = StructRef(value: 29)


print(bStruct)

// Strings, Dictionaries, Arrays are value types
var str1 = "Hello"
var str2 = str1
str1 = "Bye"
print(str2)


