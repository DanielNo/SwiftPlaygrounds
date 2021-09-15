//: Playground - noun: a place where people can play

import UIKit


func genFunc<T>(a : [T]) -> [T]{
    return a
}
func genericFunction<S: CustomStringConvertible>(string: S) {
    print(string)
}

// Example in swift manual
func swapTwoValuez<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

// Element and T are interchangeable?
func swapTwoValues<Element>(_ a: inout Element, _ b: inout Element) {
    let temporaryA = a
    a = b
    b = temporaryA
}

class PersonClass : CustomStringConvertible{
    var description: String
    
    var name : String
    var id : Int
    
    init(_ n : String,_ idNum : Int) {
        name = n
        id = idNum
        description = "\(name) : \(id)"
    }
    
}

class PersonStruct : CustomStringConvertible{
    var description: String
    
    var name : String
    var id : Int
    
    init(_ n : String,_ idNum : Int) {
        name = n
        id = idNum
        description = "\(name) : \(id)"
    }
    
}


let testA = "a"
let testB = "z"

var personA = PersonClass("Angela Class", 100)
var personB = PersonClass("Bobby Class",999)
var personC = PersonClass("Canela Class",9000)
personC = personA

swapTwoValuez(&personA, &personB)
//print("\(personA), \(personB), \(personC)")

var personStructA = PersonStruct("Angela Struct", 100)
var personStructB = PersonStruct("Bobby Struct", 999)
var personStructC = PersonStruct("Canela Struct", 9000)
print("\(personStructA), \(personStructB), \(personStructC)")

personStructA = personStructB

// copying values from a to c
// swap b and c, since c has copied a, b should be a & a should be b

print("\(personStructA), \(personStructB), \(personStructC)")
swapTwoValuez(&personStructA, &personStructC)
print("\(personStructA), \(personStructB), \(personStructC)")
print(personStructA.name)

//struct GenericQueue<T>{
//    fileprivate var elements : [T] = []

struct GenericQueue<Element>{
    fileprivate var elements : [Element] = []
    
    mutating func enqueue(newElement : Element){
        elements.append(newElement)
    }
    
    mutating func dequeue(){
        guard !elements.isEmpty else {
            print("queue is empty")
            return
        }
        elements.remove(at: 0)

    }
}

struct GenericStack<Element>{
    fileprivate var elements : [Element] = []
    
    mutating func pop(){
        guard !elements.isEmpty else{
            return
        }
        elements.removeLast(1)
    }
    
    mutating func push(newElement : Element) {
     elements.append(newElement)
    }
    
}

//Singly Linked List
class ListNode<Element>{
    var val : Element
    var next : ListNode?
    
    init(element : Element) {
        self.val = element
        self.next = nil
    }
    
    func add(newElement : ListNode){
        self.next = newElement
    }
}


var n1 = ListNode(element: "1")
n1.add(newElement: ListNode(element: "2"))


var node = ListNode(element: "1")

var aStack = GenericStack(elements: [1,2,3,4,5])
aStack.push(newElement: 6)
aStack.pop()
var x = aStack
x.pop()
x.pop()


let optionalName = Optional<String>.some("Princess Moana")
let optionalNum = Optional<Int>.some(1)
//print(optionalName!)

var myQueue = GenericQueue(elements: [1,2,3,4,5])
myQueue.enqueue(newElement: 2)
myQueue.dequeue()
myQueue.dequeue()
myQueue.dequeue()
myQueue.dequeue()
myQueue.dequeue()
myQueue.dequeue()
