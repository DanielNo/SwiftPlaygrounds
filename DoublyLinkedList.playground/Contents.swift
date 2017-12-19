//: Playground - noun: a place where people can play

import UIKit

public class Node : CustomStringConvertible{
    public var description: String
    
    var value : Int
    weak var prev : Node?
    var next : Node?
    
    init() {
        self.value = 0
        self.next = nil
        self.description = String(value)
    }
    
    init(num : Int) {
        self.value = num
        self.description = String(value)
    }
    
    func add(node : Node){
        self.next = node
    }
    
    func printNode(){
        print(self.description)
    }
}

public class DoublyLinkedList : CustomStringConvertible{
    public var description : String
    var head : Node?
    var tail : Node?
    
    init() {
        self.description = "[]"
    }
    
    init(node : Node) {
        
        self.head = node
        var current = node
        while current.next != nil {
            current = current.next!
        }
        self.tail = current
        self.description = ""
        
        
    }
    
    func append(node : Node){
        if tail != nil{
            tail?.next = node
        }else{
            tail = node
        }
    }
    
    func printLinkedList(){
        var node = head
        var output = "["
        while node != nil {
            output = "\(output)\(node!.description)"
            node = node!.next
            if node != nil{
                output = output + ","
            }
        }
        output = output + "]"
        print("Linked List : \(output)")
    }
    
    
}

var doubly = DoublyLinkedList(node: Node(num: 1))


let a = Node(num: 1)
let b = Node(num: 2)
let c = Node(num: 3)
a.add(node: b)
doubly.append(node: a)
doubly.append(node: b)
doubly.append(node: c)
doubly.printLinkedList()



