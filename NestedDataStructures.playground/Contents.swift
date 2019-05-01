//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let dict = [1:1]
let dict2 = [1:1]

var arr : [[Int:Int]] = Array()
arr.append(dict)
arr.append(dict2)


// 2d Array

let x = 5
let y = 5
var nestedArrays : [[Int]] = Array()
for num in 0..<x{
    let row = Array(repeating: 0, count: y)
    nestedArrays.append(row)
}
//print(nestedArrays)

public struct Tile{
    var coords : (Int,Int) = (0,0)
}

let tile = Tile()

public struct Board{




}




let test1 = "civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"

func longestPalindrome(_ s: String) -> Int {
    var dict = [Character : Int]()
    var count = s.count
    var ans = 0
    for char in s{
        if (dict[char] == 0 || dict[char] == nil){
            dict[char] = 1
        }else{
            dict[char] = dict[char]!+1
        }
    }
    let even = count % 2 == 0
    var highestOdd = 1
    for val in dict.values{
        if val % 2 == 0{
            ans += val
        }else{
            if val > highestOdd{
                ans += highestOdd-1
                highestOdd = val
//                print("highestOdd : \(highestOdd)")
            }else{
//                print("val : \(val)")
                ans += val - 1
            }
        }
    }
//    print(ans)
//    print(dict)
//    print(highestOdd)
    ans += highestOdd
    return ans
}
let test2 = "abccccdd"
longestPalindrome(test2)
test1.count

