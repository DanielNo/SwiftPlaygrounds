//: Playground - noun: a place where people can play

import UIKit


var listOfNumbers = [1, 2, 3, 10, 100]
var otherNumbers = [1, 2, 3, 4, 5, 6]
var unsortedList = [12, 3, 19, 30, 100,7,10]


enum Direction {
    case Up
    case Down
    case Left
    case Right
}

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

func encode(dict : [String:String], msg: String)->String{
    var encodedMsg = ""
    
    for letter in msg.characters {
        print(letter)
        let char = String(letter)

        if let str = dict[char]{
            encodedMsg += str
        }else{
            encodedMsg += char
        }
    }
    
    
    return encodedMsg
}
encode(dict: code, msg: "hello world")






func StairCase(N : Int){
    
    for index in (1...N){
        
        var spaces = N-index
        var chars = N - spaces
        while(spaces > 0){
            print(" ",separator: "",terminator:"")
            spaces -= 1
        }
        
        while (chars > 0){
            print("#",separator: "", terminator:"")
            chars -= 1
        }
        print("")
        
        
    }}
StairCase(N: 6)


//var steps: [Direction] = [.Up, .Up, .Left, .Down, .Left]


var location = (x: 5, y: 2)


var steps: [Direction] = [.Up, .Right, .Up, .Right, .Up,
                          .Right, .Down, .Right]


for movement in steps{
    switch movement{
    case .Up:
        location.y += 1
    case .Down:
        location.y -= 1
    case .Left:
        location.x -= 1
    case .Right:
        location.x += 1

    }
    
}

print(location)

//10.2
func minmax(a: Int, _ b: Int) -> (Int, Int){
    
    return a < b ? (a,b) : (b,a)
    
}

var person = (firstName: "John", lastName: "Smith")

var (firstName, lastName) = person

var (onlyFirstName, _) = person
var (_, onlyLastName) = person

//print(person)



enum HandShape {
    case Rock
    case Paper
    case Scissors
}

enum MatchResult {
    case Win
    case Draw
    case Lose
}


//10.6
var strings = ["tuples", "are", "awesome", "tuples", "are", "cool",
               "tuples", "tuples", "tuples", "shades"]

var countedStrings = [(String,Int)]()
for (index,str) in strings.enumerated(){
    
    
    
}


//func match(first: HandShape, _ second: HandShape) -> MatchResult{
//
//    if first == second {
//        return .Draw
//    }
//}
//
//match(.Rock, .Scissors)

//10.5
enum CoinType: Int {
    case Penny = 1
    case Nickle = 5
    case Dime = 10
    case Quarter = 25
}






func sum(arr : [Int]) -> Int{
    return arr.reduce(0){(total,num) in
        total + num
    }
}

sum(arr: [1,2,3,4])


var moneyArray:[(Int,CoinType)] = [(10,.Penny),
                                   (15,.Nickle),
                                   (3,.Quarter),
                                   (20,.Penny),
                                   (3,.Dime),
                                   (7,.Quarter)]
var sum = 0
for obj in moneyArray{
    sum += (obj.0 * obj.1.rawValue)
}

print(sum)



func fibonacci(i: Int) -> Int{
    if i <= 2  {
        return 1
    }else{
        return fibonacci(i: i-2) + fibonacci(i: i-1)
    }
}
fibonacci(i: 1 )

func factorial(N: Int) -> Int{
    if N == 1{
        return 1
    }
    else{
        return factorial(N: N-1) * N
    }
}
//20
func digits(number: Int) -> [Int]{
//    if number / 10 < 1 {
//        return [number]
//    }
//    else{
//        return [number/10] + digits(number/10)
//    }
    if number < 10 {
        return [number]
    }
    else{
        return digits(number: number/10) + digits(number: number%10)

    }
    
}

func pow(x: Int, y: Int) -> Int{
    if y == 1 {
        return x
    }
    else{
        return x * pow(x, y-1)
    }
}

//pow(100, y:1 )
pow(100, 1)


//euclidian algorithm
func gcd(a: Int, b: Int) -> Int{
    if a == 0 {
        return b
    }
    else if(b == 0){
        return a
    }else{
        if a > b {
            return gcd(a: a-b, b: b)
        }
        else{
            return gcd(a: a, b: b-a)
        }
    }
}

let numbers = [1, 2, 4, 5, 7, 8, 9, 12] // 8 elements

func changes( x : inout Int)->Int{
    x = 10
    return x
    
}
func binarySearch(key: Int,
                  _ numbers: [Int],
                    left: Int = 0,
                    right: Int = -1) -> Bool{
    var right = right
    if right == -1 {
        right = numbers.count/2
    }
    else{
        right = (left + right)/2
    }
    
    if key == numbers[right] {
        return true
    }
    else if(key > numbers[right]){
        return binarySearch(key, numbers, left: right, right: numbers.count)
    }
    else{
        return binarySearch(key, numbers, left: left, right: right)
    }
}

binarySearch(2, [1, 2, 4, 5 ,7, 9])


func search(arr:[Int], term : Int)->Bool{
    var found = false
    
    for (index,obj) in arr.enumerated() {
        if obj == term {
            return true
        }
    }
    
    return false


}
var stack: [Int] = []

func pop( queue: inout [Int]) -> Int?{
    return queue.count > 0 ? queue.removeFirst() : nil
}

func push(number: Int, _ queue: inout [Int]){
    queue.append(number)
}
push(1, &stack) // stack = [1]

push(2, &stack) // stack = [1, 2]

pop(queue: &stack) // 2, stack = [1]

push(3, &stack) // stack = [1, 3]

pop(queue: &stack) // 3, stack = [1]

pop(queue: &stack) // 1, stack = []

pop(queue: &stack) // returns nil because there are no elements in the stack
// stack = []


func intersection(arr1 : [Int], arr2 : [Int])->[Int]{
    var set = Set(arr1)
    var common = [Int]()
    for (num,obj) in arr2.enumerated() {
        if set.contains(obj) {
            common.append(obj)
        }
    }
    
    return common
    
    
}

func countdown(N: Int) {
    var i = N
    
    while i > 0 {
        print(i)
        
        if i >= 1 {
            sleep(1)
        }
        
        i -= 1
    }
    
    print("GO!")
}

func first(N: Int) -> [Int]{
    var nums = Array(1...N)
    
    return nums
}

first(N: 10)

intersection(arr1: listOfNumbers, arr2: otherNumbers)




func findMax(arr:[Int])->Int{
    var max = arr[0]
    for num in arr {
        if num > max {
            max = num
        }
    }
    return max
}

var num = 0

func reverse(num : Int) -> Void{
    print(num%10)
    
    if num >= 10 {
        reverse(num: num/10)
    }
    
}

reverse(num: num)

func replace(str : String, character : Character, replacement : Character) -> Void{
    var charArray = str.characters.map { $0    }
    
    for (index,char) in charArray.enumerated(){
        if char == character {
            charArray[index] = replacement
        }
    }
    print(String(charArray))
    
}

func palindrome(str : String)->Bool{
    if str == String(str.characters.reversed()) {
        return true
    }
    else{
        return false
    }
    
    
}

func printOdds(arr : [Int]){
    for num in arr {
        num % 2 == 0 ? print("even :",num) : print("odd",num)
    }
}

let intArray = [Int](1...10)
let intArray2 = (1...100).map { $0}

for num in [Int](1...10){
//    print("hi",num)
}

replace(str: "Replace the letter e with *", character: "e", replacement: "*")


var aString = "this string has 29 characters"
var reverse = ""

for character in aString.characters {
    var asString = "\(character)"
//    print(asString)
    reverse = asString + reverse

}
print(reverse)

let arrr = Array(1...10)
let sett = Set(1...10)

var number = 17

func isPrimeNum(num : Int) -> Bool{
    var divisors = 1
    if num % 2 == 0 {
        return false
    }
    else{
        
        for index in 1...num/2 {
            if num%index == 0 {
                divisors += 1
            }
        }
        print("divisors : ",divisors)
        if divisors > 2 {
            print("composite")
            return false
        }
        else{
            print("prime")
            return true
        }
        
    }
    
    
}


//   chapter 11


//11.3
var people: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]
var fullnames = [String]()
for person in people{

    guard let first = person["firstName"] else{
        break
    }
    guard let last = person["lastName"] else{
        break
    }
    fullnames.append(first + " " + last)

}

print(fullnames)

var people2: [[String:Any]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 23
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]

//11.5
var max = 0
var topPerson = [String : Any]()
for person in people2{
    let score = person["score"] as! Int
    if score > max{
        topPerson = person
        max = score
    }
}

//print(topPerson["firstName"]!,topPerson["lastName"]!,topPerson["score"]!)

//11.6

var people3: [[String:Any]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 23
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]

for person in people3{
//    print(person["firstName"]!,person["lastName"]!,"-",person["score"]!)
}

people3.sort {
($0["score"] as? Int)! > ($1["score"] as? Int)!
}

//11.7

var numbers2 = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]

var dict = [Int:Int]()
for num in numbers2{
    if dict.keys.contains(num){
        dict[num]! += 1
    }
    else{
        dict[num] = 1
    }
}

var keys = Array(dict.keys)
keys.sort{
    $0 < $1
}
//print(keys)

for key in keys{
//    print(key,dict[key]!)
}





