//: Playground - noun: a place where people can play

import UIKit

// Reverse a string with character array or use .reverse function

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

//    let start = word.index(word.startIndex, offsetBy: r1)
//    let end = word.index(word.startIndex, offsetBy: r2)
//    let range = start...end
//    let substring = word[range]



// Get the nth character in string

let nthIndex = str.index(str.startIndex, offsetBy: 6)
let nthChar = str[nthIndex]
print(nthChar)

// Make a string range to substring
let startIndex = str.index(str.startIndex, offsetBy: 5)
let endIndex = str.index(str.startIndex, offsetBy: 11)
let range = startIndex ..< endIndex
let world = str.substring(with: range)

// Substring using character array
let helloString = String(str.characters.prefix(5))
let worldString = String(str.characters.suffix(6))


