//: Playground - noun: a place where people can play

import UIKit

// Reverse a string

let str = "Hello World"

func reverseString(string : String) -> String{
    var reversedString = [Character]()
    for (index,char) in string.characters.enumerated(){
        reversedString.append(char)
    }
    print(reversedString)
    return String(reversedString)
}

let reversed = reverseString(string: str)

// Substring

// Creates an String.index from String.startIndex to number of elements, offsetby is not the ending index.
let index = str.index(str.startIndex, offsetBy: 5)
let hello = str.substring(to: index)  // Hello
print(hello)


