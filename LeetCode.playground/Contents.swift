//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let map = [1:2]
if map.keys.contains(1) {
    print("dog")
}

let nums1 = [2,7,11,15]
let nums2 = [8,7,3,2,4]
let nums3 = [3,2,4]

let target1 = 9
let target2 = 11
let target3 = 6

//func twoSum(nums : [Int],target : Int) -> [Int]{
//    var numsDict = [Int:Int]()
//    for i in 0..<nums.count{
//        numsDict[i] = nums[i]
//    }
//    for j in 0..<nums.count{
//        if let value = dictionary[target - element], index != value {
//            return [value, j]
//        }
//
////        if numsDict.values.contains(target-numsDict[j]!) {
////            let k = numsDict.values.index(of: target-numsDict[j]!) as Int
////            return [j,k]
////        }
//    }
//    
//    return [0]
//}

func twoSum(nums: [Int], target: Int) -> [Int] {
    var dictionary = [Int:Int]()
    for (index, element) in nums.enumerated() {
        dictionary[element] = index
    }
    for (index1, element1) in nums.enumerated() {
        if let value = dictionary[target - element1], index1 != value {
            return [value, index1]
        }
    }
    return []
}

func dicts(){
    let nums1 = [0:1,1:2,2:3]
    
    for (key, values) in nums1.enumerated(){
//        print(String(key))
        print(values)
    }
    
    if let x = "abe" as String?, "a" == "a"{
        print(x)

    }
    
    
}

dicts()


twoSum(nums: nums1, target: target1)
twoSum(nums: nums2, target: target2)
twoSum(nums: nums3, target: target3)


func twoSumBrute(nums : [Int],target : Int) -> [Int]{

    for i in 0..<nums.count{
        let x = i + 1
        for j in x..<nums.count{
            if nums[j] == (target - nums[i]) {
                return [i,j]
            }
            
        }
        
    }
    return [0,0]
}


twoSumBrute(nums: nums1, target: target1)
twoSumBrute(nums: nums2, target: target2)
twoSumBrute(nums: nums3, target: target3)



func fizzBuzz(_ n: Int) -> [String] {
    var fizzbuzz = [String]()
    fizzbuzz.reserveCapacity(15)
    for i in 1...n{
        if(i % 15 == 0){
            print("15")
            fizzbuzz.append("FizzBuzz")
        }else if(i % 3 == 0){
            print("15")
            fizzbuzz.append("Fizz")
        }else if(i % 5 == 0){
            print("15")
            fizzbuzz.append("Buzz")
        }else{
            print(i)
            fizzbuzz.append(String(i))
        }
    }
    return fizzbuzz
}

fizzBuzz(1)

func judgeCircle(_ moves: String) -> Bool {
    var moveDict = ["U" : 0, "D" : 0, "L" : 0, "R" : 0]
    for move in moves.characters.enumerated(){
        let moveStr = String(describing: move)
//        moveDict[moveStr]? += 1
        
            print("")
        
    }
    print(moveDict)
    return true
}

let x = judgeCircle("RDUUL")

func firstRecurringCharacter(str : String) -> Character?{
    var letters = [Character : Int]()
    for char in str.enumerated(){
        if letters[char.element] == nil {
            letters[char.element] = 1
        }else{
            return char.element
        }
    }
    return nil
}
let dups1 = "DBCABA"
firstRecurringCharacter(str: dups1)


// 557. Reverse Words in a String III
//func reverseWords(_ s: String) -> String{
//    var word = ""
//    var reversed = [String]()
//    for (index,c) in s.enumerated(){
//        if c == " " {
//            reversed.append(String(word.reversed()))
//            word = ""
//
//        }else{
//            word.append(c)
//            if s.count-1 == index {
//                reversed.append(String(word.reversed()))
//                break
//            }
//        }
//    }
//    return reversed.joined(separator: " ")
//}

//func reverseWords(_ s: String) -> String{
////    var reversed = Array(String(repeating: " ", count: s.count))
//    var reversed = Array(s)
//    var word = ""
//    var start = 0
//    var end = 0
//    for (index,char) in s.enumerated() {
//        if(char == " "){
//            reversed.replaceSubrange(start..<end, with: Array(word.reversed()))
//            word = ""
//            print("start : \(start)  end : \(end)")
//            start = end+1
//            end+=1
//        }else if(index == s.count-1){
//            word.append(char)
//            end = index
//            reversed.replaceSubrange(start...end, with: Array(word.reversed()))
//            print("start : \(start)  end : \(end)")
//
//        }
//        else{
//            end+=1
//            word.append(char)
//        }
//
//    }
//    return String(reversed)
//
//}

func reverseWords(_ s: String) -> String {
    let words = s.components(separatedBy: " ")
    var reservedArr = [String]()
    reservedArr.reserveCapacity(words.count)
    for word in words.enumerated(){
        let reversed = String(word.element.reversed())
        reservedArr.append(reversed)
    }
    return reservedArr.joined(separator: " ")
}

//442. Find All Duplicates(twice appearing) in an Array
func findDuplicates(_ nums: [Int]) -> [Int] {
    nums.withUnsafeBufferPointer { arr in
        print(arr[0])
        print(arr[0])
    }
    nums.withUnsafeBufferPointer { arr -> [Int] in
        arr[0] = 22
        print(arr[0])
        print(arr[0])
        return Array(arr)
    }

    var dict = [Int:Int]()
    for num in nums{
        if (dict[num] != nil) {
            dict[num] = dict[num]!+1

        }else{
            dict[num] = 1
        }
    }
    var ans = [Int]()
    for key in dict.keys{
        if dict[key] == 2{
            ans.append(key)
        }
    }
    return ans
}
findDuplicates([1,2,3,4])
//reverseWords("cow pig horse dog")
reverseWords("Let's take LeetCode contest")
