import UIKit

var arr = [1,2,3,4,5]
func forwardIterate(_ arr : [Int]){
    var count = 0
    while count < arr.count {
//        print(arr[count])
        count+=1
    }
    
}

func reverseIterate(_ arr : [Int]){
    var count = arr.count-1
    while count >= 0{
        print(arr[count])
        count-=1
    }
}

func shiftRight(_ arr : [Int]) -> [Int]{
    var arrCopy = arr
    var count = arr.count-1
    while count > 0{
        arrCopy[count] = arrCopy[count-1]
        count-=1
    }
    arrCopy[0] = 0
    return arrCopy
}

func shiftLeft(_ arr : [Int]) -> [Int]{
    var arrCopy = arr
    var count = arr.count-1
    var i = 0
    while i < count {
        print(arrCopy)
        arrCopy[i] = arrCopy[i+1]
        i+=1
    }
    return arrCopy
}


forwardIterate(arr)
reverseIterate(arr)
shiftRight(arr)
shiftLeft(arr)

func test(_ a : [Int]){
    var arr = a
    var count = arr.count
    while
}
