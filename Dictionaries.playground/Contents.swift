//: Playground - noun: a place where people can play

import UIKit

let nums = [1,2,2,3,3,3,4,4,4,4,5]

func occurenceOfNumbers(_nums : [Int]) -> [Int : Int]{
    var dict = [Int:Int]()
    nums.map {
        if let val: Int = dict[$0]  {
        dict[$0] = val+1
        } else {
        dict[$0] = 1
        }
    }
    return dict
}

occurenceOfNumbers(_nums: nums)


// Dictionary of Int:Set
let testArr1 = [[1,1],[1,3],[3,1],[3,3],[2,2]]
let testArr2 = [[1,1],[1,3],[3,1],[3,3],[4,1],[4,3]]

func generatePairs(_ points : [[Int]]){
    var dict : Dictionary<Int,Set<Int>> = [:]
    for (i,arr) in points.enumerated(){
        let x = arr[0]
        let y = arr[1]
        if dict[x] == nil{
            dict[x] = Set<Int>([y])
        }else{
            dict[x]!.insert(y)
        }
    }
    for key in dict.keys{
        let val = dict[key]!
        print(val)
        for y in 1..<val.count{
            
        }
//        print("\(key) : \(val)")
    }
    
    
    
//    print(dict)
}

generatePairs(testArr1)
//generatePairs(testArr2)
