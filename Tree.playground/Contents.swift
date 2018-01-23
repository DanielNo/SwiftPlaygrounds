//: Playground - noun: a place where people can play

import UIKit


public class Node : CustomStringConvertible{
    public var description: String {
     return String(value)
    }
    
    var right : Node?
    var left : Node?
    var value : Int
    init() {
        right = nil
        left = nil
        value = 0
    }
    
    init(val : Int){
        self.value = val
    }
    
    convenience init(left : Node, right : Node){
        self.init(val: 0)
        self.left = left
        self.right = right
    }
    
    func printNode(){
     print(self.description)
    }


}

public class BinaryTree : CustomStringConvertible{
    public var description: String {
        return String(self.root.value)
    }
    
    enum TreeTraversal {
        case preorder
        case postorder
        case inorder
    }

    var root : Node!
    
    init() {
        root = nil
    }
    
    init(root : Node){
        self.root = root
    }
    
    init(val : Int){
        self.root = Node(val: val)
    }
    
    func insert(node : Node) {
        
    }
    
    func bstInsert(node : Node, value : Int) {
        if value > node.value{
            if node.right == nil{
                print("nil right")
                node.right = Node(val: value)
            }else{
                print("recurse right")
                bstInsert(node: node.right!, value: value)
            }
            
        }else if(value <= node.value){
            guard let left = node.left else{
                node.left = Node(val: value)
                print("nil left")

             return
            }
            print("recurse left")
            bstInsert(node: left, value: value)

//            if node.left == nil{
//                node.left = Node(val: value)
//
//            }else{
//                bstInsert(node: node.left!, value: value)
//            }

        }
    }

    func treeString(traversal : TreeTraversal) -> String{
        switch traversal {
        case .postorder:
            return self.postorderPrint(node: self.root)
        case .preorder:
            return self.preorderPrint(node: self.root)
        case .inorder:
            return self.inorderPrint(node: self.root)
        }
    }
    
    func printTree(traversal : TreeTraversal){
        switch traversal {
        case .postorder:
            print(self.postorderPrint(node: self.root))
        case .preorder:
            print(self.preorderPrint(node: self.root))
        case .inorder:
            print(self.inorderPrint(node: self.root))
        }
    }

    
    func preorderSearch(node : Node, value : Int) -> Bool{
        if node.value == value{
            return true
        }else{
            if node.left == nil && node.right == nil {
                return false
            }else if(node.left == nil && node.right != nil){
                return preorderSearch(node:node.right!, value:value)
                
            }else if(node.left != nil && node.right == nil){
                return preorderSearch(node:node.left!, value:value)
                
                
            }else{
                return preorderSearch(node:node.right!, value:value) || preorderSearch(node:node.left!, value:value)
            }
        }
    }
    

    func preorderPrint(node : Node) -> String{
        if node.left == nil && node.right == nil {
            return node.description
        }
        if node.left != nil && node.right == nil {
            return preorderPrint(node:node.left!)
        }
        if node.left == nil && node.right != nil {
            return preorderPrint(node:node.right!)
        }

        return node.description + preorderPrint(node:node.left!) + preorderPrint(node:node.right!)
    }
    
    func postorderPrint(node : Node) -> String{
        if node.left == nil && node.right == nil {
            return node.description
        }
        if node.left != nil && node.right == nil {
            return postorderPrint(node:node.left!)
        }
        if node.left == nil && node.right != nil {
            return postorderPrint(node:node.right!)
        }
        return postorderPrint(node:node.left!) + postorderPrint(node:node.right!) + node.description
    }
    
    func inorderPrint(node : Node) -> String{
        if node.left == nil && node.right == nil {
            return node.description
        }
        if node.left != nil && node.right == nil {
            return inorderPrint(node:node.left!)
        }
        if node.left == nil && node.right != nil {
            return inorderPrint(node:node.right!)
        }
        return inorderPrint(node:node.left!) + node.description + inorderPrint(node:node.right!)
    }

}

//let tree = BinaryTree(val: 1)
//tree.root?.left = Node(val: 2)
//tree.root?.right = Node(val: 3)
//tree.root?.left?.left = Node(val: 4)
//tree.root?.left?.right = Node(val: 5)
//let n1 = Node(val: 1)
//
//tree.preorderPrint(node: tree.root)
//tree.preorderSearch(node: tree.root, value: 7)
//tree.postorderPrint(node: tree.root)
//
//
//tree.printTree(traversal: .preorder)
//tree.printTree(traversal: .postorder)
//tree.printTree(traversal: .inorder)
//tree.bstInsert(node: tree.root, value: 7)
//tree.bstInsert(node: tree.root, value: 2)
//tree.printTree(traversal: .inorder)


var tree2 = BinaryTree(val: 1)
tree2.bstInsert(node: tree2.root, value: 2)
//tree2.bstInsert(node: tree2.root, value: 3)
let x = tree2.treeString(traversal: .preorder)
print(x)
