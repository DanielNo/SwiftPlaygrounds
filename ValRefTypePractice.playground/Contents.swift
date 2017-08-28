//: Playground - noun: a place where people can play

import UIKit


var val : Int = 1

// Create a class and a struct
let classA = ClassRef(value: val)
var structA = StructRef(value: val)

// Create pointer for class1 and class2 to classA
let class1 = classA
let class2 = classA

print("class 1:",class1.val)
print("class 2:",class2.val)
print("class a:",classA.val)
print("\n")

// Change classA reference
classA.val = 2

// class1 and class2 now point to classA reference
print("class 1:",class1.val)
print("class 2:",class2.val)
print("class a:",classA.val)
print("\n")

// Set pointer struct1 to StructA
var structB = structA
structA.val = 2
//struct1.val = 2

// struct1 does not copy value from structA
print("struct a:",structA.val)
print("struct b:",structB.val)





//print("",classA)
//print("",StructA)
//
//print("",classA.val)
//print("",StructA.val)
//
//
//
//print("changing val....")
//classA.val = 2
//StructA.val = 2
////class1.val = 2
////struct1.val = 2
//
//
//print("class A val",classA.val)
//print("struct A val",StructA.val)
//
//print("class1 val",class1.val)
//print("struct1 val",struct1.val)


