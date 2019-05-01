import UIKit

let unsortedArray = [6,3,4,6,1,5,2,1,2,4,6,7,2,6,8,20,22]
let unsortedArray2 = [6,4,5,6,5,6,5,7,6,7,8,1,2,8,5,13,22]
// MERGE SORT : TOP DOWN APPROACH
func mergeSort(arr : [Int]) -> [Int]{
    guard arr.count > 1 else { return arr }
    let mid = arr.count/2
    
    let left = mergeSort(Array(arr[0..<mid]))
    let right = mergeSort(Array(arr[mid..<arr.count]))
    let merged = merge(left, right:right )
    return merged
}

func merge(left:[Int] ,right:[Int]) -> [Int]{
    var i = 0
    var j = 0
    var sortedArr = [Int]()
    
    while i < left.count && j < right.count {
        if(left[i] < right[j]){
            sortedArr.append(left[i])
            i += 1
        }
        else if(left[i]>right[j]){
            sortedArr.append(right[j])
            j += 1
        }else{
            sortedArr.append(left[i])
            i += 1
            sortedArr.append(right[j])
            j+=1
        }
    }
    
    while i < left.count {
        sortedArr.append(left[i])
        i+=1
    }
    
    while j < right.count {
        sortedArr.append(right[j])
        j+=1
    }
    return sortedArr
}

let sorted = mergeSort(unsortedArray)
print(sorted)



func mSort(unsortedArray:[Int])-> [Int]{
    guard unsortedArray.count > 1 else{
        return unsortedArray
    }
    
    let mid = unsortedArray.count/2
    
    var left = mSort(Array(unsortedArray[0..<mid]))
    var right = mSort(Array(unsortedArray[mid..<unsortedArray.count]))
    
    return mSortMerge(left, rightArr: right)
    
}

func mSortMerge(leftArr: [Int],rightArr:[Int]) -> [Int]{
    var leftIndex = 0
    var rightIndex = 0
    var sortedArr = [Int]()
    while (leftIndex < leftArr.count && rightIndex < rightArr.count) {
        if leftArr[leftIndex] <= rightArr[rightIndex] {
            sortedArr.append(leftArr[leftIndex])
            leftIndex += 1
        }
        else if(leftArr[leftIndex] >= rightArr[rightIndex]){
            sortedArr.append(rightArr[rightIndex])
            rightIndex += 1
        }
        
        
    }
    while leftIndex < leftArr.count {
        sortedArr.append(leftArr[leftIndex])
        leftIndex+=1
    }
    while rightIndex < rightArr.count {
        sortedArr.append(rightArr[rightIndex])
        rightIndex+=1
    }
    return sortedArr
}

print(unsortedArray2.count)
let sortedArrr = mSort(unsortedArray2)
print(sortedArrr.count)


// Sieve of eratosthenes algorithm to find prime numbers (Syntax is ugly compared to C / Java style for loop...)
// 0 and 1 are not prime numbers
// Time complexity : O(n) linear
// Space complexity : O(n) linear
func findPrimes(_ target : Int) -> [Int]{
    var nums = Array(repeating: true, count: target+1)
    nums[0] = false
    nums[1] = false
    for i in 2...target{
        if nums[i] == false{
            continue
        }else{
            for index in stride(from: i, through: target, by: i){
                if index > i{
                    nums[index] = false
                }
            }
        }
    }
    var ans = [Int]()
    for (index,element) in nums.enumerated(){
        if element == true {
            ans.append(index)
        }
    }
    return ans
}

// Time complexity :
// Space complexity : O(n) linear
func findPrimesBrute(_ target : Int) -> [Int]{
    var nums = [Int]()
    for num in 2...target{
        nums.append(num)
    }
    for n in 2...target{
        nums = nums.filter({ (i) -> Bool in
            return i % n != 0 || i == n
        })
    }
    return nums
}


let x = findPrimesBrute(30)

let y = findPrimes(2000)































