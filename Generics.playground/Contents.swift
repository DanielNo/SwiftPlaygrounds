//: Playground - noun: a place where people can play

import UIKit


func genFunc<T>(a : [T]) -> [T]{
    return a
}

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
print(n1.val)
print(n1.next?.val)



var node = ListNode(element: "1")

var aStack = GenericStack(elements: [1,2,3,4,5])
aStack.push(newElement: 6)
aStack.pop()
print(aStack)
var x = aStack
x.pop()
x.pop()
print(x)


let optionalName = Optional<String>.some("Princess Moana")
let optionalNum = Optional<Int>.some(1)
print(optionalName!)

var myQueue = GenericQueue(elements: [1,2,3,4,5])
myQueue.enqueue(newElement: 2)
myQueue.dequeue()
myQueue.dequeue()
myQueue.dequeue()
myQueue.dequeue()
myQueue.dequeue()
myQueue.dequeue()
print(myQueue)
