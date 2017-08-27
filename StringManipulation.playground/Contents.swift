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
let index = str.index(str.startIndex, offsetBy: 5)
let hello = str.substring(to: index)  // Hello
print(hello)

