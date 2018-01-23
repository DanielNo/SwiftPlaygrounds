//: Playground - noun: a place where people can play

import UIKit
//func fib(_ num: Int, cache: inout [Int]) -> Int{
//    if num <= 0 {
//        return 0
//    }
//    else if num == 1 {
//        return 1
//    }else{
//        cache[num] = fib(num-1, cache: &cache) + fib(num-2, cache: &cache)
//        return cache[num]
//    }
//}
//var arr = [Int]()
//fib(1, cache: &arr)

var numCache = [Int:Int]()
//func fib(fibNum : Int, cache : inout [Int : Int]) -> Int{
//    if fibNum == 0 {
//        cache[fibNum] = 0
//        return 0
//    }else if fibNum == 1{
//        cache[fibNum] = 1
//        return 1
//    }
//    cache[fibNum] = fib(fibNum: fibNum-1, cache: &cache) + fib(fibNum: fibNum-2, cache: &cache)
//
//    return cache[fibNum]!
//}
//fib(fibNum: 22, cache: &numCache)

func fib(fibNum : Int, cache : inout [Int : Int]) -> Int{
    switch fibNum {
    case 0:
        return 0
    case 1:
        return 1
    default:
        if cache[fibNum] != nil {
            return cache[fibNum]!
        }else{
            cache[fibNum] = fib(fibNum: fibNum-1, cache: &cache) + fib(fibNum: fibNum-2, cache: &cache)
            return cache[fibNum]!
        }
    }
}
fib(fibNum: 50, cache: &numCache)



func mutater(str : inout [String]) -> [String] {
    str[0] = "hello world"
    str.append("bye world")
    return str
}
var hello = ["hello"]
mutater(str: &hello)

func judgeCircle(_ moves: String) -> Bool {
    let length = moves.characters.count
    if(length % 2 == 1){
        return false
    }
    var x = 0
    var y = 0
    for move in moves.characters{
        switch move {
        case "U":
y += 1
        case "D":
y -= 1
        case "L":
x -= 1
        case "R":
x += 1
        default:
            break
        }
    }
    return (x == 0) && (y == 0)
}

func findComplement(_ num: Int) -> Int {
//    let bNum = String(num,radix:2)
//    let bString = UInt8(bNum)
//    let comp = ~bString!
    return 1
}

findComplement(5)

judgeCircle("RDUUL")

func maxProfit(_ prices: [Int]) -> Int {
    if prices.count <= 1{
        return 0
    }
    var lowest = 0
    for i in 1..<prices.count{
        if prices[i] < prices[lowest] {
            lowest = i
        }
    }
    print("first" + String(lowest))

    var highest = lowest
    for j in lowest..<prices.count{
        if prices[j] > prices[highest] {
            highest = j
        }
    }
    print("second" + String(lowest))

    print("third" + String(highest))

    
    
    
    return prices[highest] - prices[lowest]
}





func maxProfit2(_ prices: [Int]) -> Int {
    if (prices.count <= 1){
        return 0
    }else{
        var maxVal = 0
        for i in 0..<prices.count{
            
            let subArray = prices[i..<prices.count]
            let max = subArray.max()
            if max! < prices[i] {
                continue
            }
            let diff = max! - prices[i]
            if (diff > maxVal){
                maxVal = diff
            }
            
        }
        return maxVal
    }
}

let stocks1 = [7, 1, 5, 3, 6, 4]
let stocks2 = [7, 6, 4, 3, 1]
let stocks3 = [1, 6, 4, 3, 1]
let stocks4 = [2,4,1]

maxProfit2(stocks4)

//maxProfit(stocks1)
//maxProfit(stocks2)
//maxProfit(stocks3)
maxProfit(stocks4)

func lowestNum(_ nums : [Int]) -> Int{
    var lowest = nums[0]
    for i in 1..<nums.count{
        if nums[i] < lowest{
            lowest = nums[i]
        }
    }
    return lowest
}

func highNum(_ nums : [Int]) -> Int{
    var highest = nums[0]
    for i in 1..<nums.count{
        if nums[i] > nums[highest] {
            highest = nums[i]
        }
    }
    
    return highest
    
}


let low = lowestNum(stocks3)
let high = highNum(stocks3)

let dic = [1:2]
print(dic)
if(dic[21] != nil){
 print("exist")
}else{
    print("doesnt")
}
dic[1]


