//: Playground - noun: a place where people can play

import UIKit

public class Node : CustomStringConvertible{
    public var description: String
    
    var value : Int
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

public class SinglyLinkedList : CustomStringConvertible{
    public var description: String {
        if head == nil {
            return "[ ]"
        }
        var curr = self.head
        var desc = ""
        while curr != nil {
            if desc == ""{
                desc = curr!.description
            }else{
                desc += ", \(curr!.description)"

            }
            curr = curr?.next
        }
        desc = "[\(desc)]"
        return desc
    }
    var head : Node?
    
    init() {
        self.head = nil
    }
    
    init(node : Node) {
        self.head = node
    }
    
    init(nums : [Int]) {
        if nums.count == 0 {
            self.head == nil
            return
        }
        self.head == nil
        var curr = head
        for num in nums{
            if self.head == nil{
             self.head = Node(num: num)
                curr = self.head
            }else{
                let next = Node(num : num)
                curr?.add(node: next)
                curr = curr?.next
            }
        }
    }
        
    
    // Add node to end of LinkedList
    func append(node : Node){
        var current = head
        while current!.next != nil {
            current = current!.next
        }
        current?.add(node: node)

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
        print("Singly Linked List : \(output)")
    }
    
    func count() -> Int{
        if head == nil{
            return 0
        }
        var current = head
        var count = 1
        while current?.next != nil {
            current = current!.next
            count += 1
        }
        return count
    }
    
    func nodeAt(index: Int) -> Node?{
        if (index < 0){return nil}
        var count = 0
        var node = head
        while count != index && node != nil{
            count += 1
            node = node?.next
            print("iteration : \(count)")
        }
        return node
    }
    
    func insert(node : Node, index : Int){
        if index >= self.count() || index < 0{
            print("invalid")
            return
        }
        if index == 0{
            let oldHead = head
            node.next = oldHead
            self.head = node
            return
        }
        
        var nodeBefore = self.nodeAt(index: index-1)
        var temp = nodeBefore?.next
        nodeBefore?.next = node
        nodeBefore?.next?.next = temp
        nodeBefore?.printNode()
    }
    
    // Removes first occurence of value in linked list
    func remove(value : Int){
        var node = head
        if head?.value == value {
            head = head?.next
            return
        }
        var current = head?.next
        var prev = head
        while current?.value != value && current?.next != nil{
            prev = prev?.next
            current = current?.next
        }
        if current?.value == value {
            prev?.next = prev?.next?.next
        }
    }
    
    
    
    
    
    
    func delete(position : Int){
        if position == 0{
            self.head = self.head?.next
            return
        }
        else{
            var node = nodeAt(index: position-1)
            node?.next = node?.next?.next
        }
    }
    
    // incomplete
    func removeNodesWithValue(value : Int){
        var current = head
        var prev : Node? = nil
        while current?.value != value && current?.next != nil {
            prev = current
            current = current?.next
            if current?.value == value{
                if prev != nil{
                    prev?.next = current
                }else{
                    self.head = current?.next
                }

            }
        }
    }
    
    func reverseTraversal() -> SinglyLinkedList?{
        var prev : Node?
        var current = head
        var nextNode = current?.next
        while current != nil {
            nextNode = current?.next
            current?.next = prev
            prev = current
            current = nextNode
        }
        self.head = prev
        return self
    }
    
    func recursiveReverse(nextNode : Node?,current : Node?) -> Void{
        if current == nil {
            return
        }else{
            var next = current?.next
            current?.next = nextNode
            recursiveReverse(nextNode: current, current: next)
        }
        
    }
    
    func recursiveAddition(nextNode : Node) -> Int{
        if nextNode == nil {
            return 0
        }else{
            if nextNode.next != nil{
                return nextNode.value + recursiveAddition(nextNode: nextNode.next!)
            }else{
                return nextNode.value
            }
        }
        
    }
    
}
let a = Node(num: 1)
let b = Node(num: 2)
let c = Node(num: 3)
let d = Node(num: 100)
var myLinkedList = SinglyLinkedList(node: a)
myLinkedList.append(node: b)
myLinkedList.append(node: c)
myLinkedList.insert(node: d, index: 0)

myLinkedList.delete(position: 0)

myLinkedList.reverseTraversal()
//myLinkedList.recursiveReverse(nextNode: nil, current: myLinkedList.head)

myLinkedList.recursiveAddition(nextNode: myLinkedList.head!)
//myLinkedList.removeNodeWithValue(value: 3)
myLinkedList.remove(value: 1)

var v = SinglyLinkedList(nums: [1,2,3,4,5,5,5])

