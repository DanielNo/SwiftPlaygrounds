//: Playground - noun: a place where people can play

import UIKit


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

