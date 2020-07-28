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
        case bfsLevelorderQueue
        case bfsLevelorder
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
        case .bfsLevelorderQueue:
            return self.postorderPrint(node: self.root)//fix this
        case .bfsLevelorder:
            return self.postorderPrint(node: self.root)//fix this
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
        case .bfsLevelorderQueue:
            print("bfs level order using queue : \(self.levelOrderPrintQueueApproach(node: self.root))")
        case .bfsLevelorder:
            print("bfs level order : \(self.levelOrderPrint(node: self.root))")
        case .postorder:
            print("post order : \(self.postorderPrint(node: self.root))")
        case .preorder:
            print("pre order : \(self.preorderPrint(node: self.root))")
        case .inorder:
            print("in order : \(self.inorderPrint(node: self.root))")
        }
    }
    /////////////////////////////////////////////////////////
    // BREADTH FIRST SEARCH
    /////////////////////////////////////////////////////////
    
    
    // TODO : Try implement using geeksforgeeks approach #1
    // Time Complexity: O(n^2) in worst case. For a skewed tree, printGivenLevel() takes O(n) time where n is the number of nodes in the skewed tree. So time complexity of printLevelOrder() is O(n) + O(n-1) + O(n-2) + .. + O(1) which is O(n^2).
    // Space Complexity: O(n) in worst case. For a skewed tree, printGivenLevel() uses O(n) space for call stack. For a Balanced tree, call stack uses O(log n) space, (i.e., height of the balanced tree).


    func levelOrderPrint(node : Node?) -> String{
        guard let n = node else{
            return ""
        }
        return n.description + levelOrderPrint(node: node?.left) + levelOrderPrint(node: node?.right)
        
    }
    
    // Time Complexity: O(n) where n is number of nodes in the binary tree
    // Space Complexity: O(n) where n is number of nodes in the binary tree
    func levelOrderPrintQueueApproach(node : Node?) -> String{
        guard let r = node else{
            return ""
        }
        var queue : [Node] = [r]
        
        var output : String = ""
        while queue.count > 0{
            let n = queue.removeFirst()
            output.append(n.description)

            if let left = n.left{
                queue.append(left)
            }
            if let right = n.right{
                queue.append(right)
            }
        }
        
        return output
    }
    
    
    /////////////////////////////////////////////////////////
    // DEPTH FIRST SEARCH
    /////////////////////////////////////////////////////////
    
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
            return node.description + preorderPrint(node:node.left!)
        }
        if node.left == nil && node.right != nil {
            return node.description + preorderPrint(node:node.right!)
        }

        return node.description + preorderPrint(node:node.left!) + preorderPrint(node:node.right!)
    }
    
    func postorderPrint(node : Node) -> String{
        if node.left == nil && node.right == nil {
            return node.description
        }
        if node.left != nil && node.right == nil {
            return node.description + postorderPrint(node:node.left!)
        }
        if node.left == nil && node.right != nil {
            return node.description + postorderPrint(node:node.right!)
        }
        return postorderPrint(node:node.left!) + postorderPrint(node:node.right!) + node.description
    }
    
    func inorderPrint(node : Node) -> String{
        if node.left == nil && node.right == nil {
            return node.description
        }
        if node.left != nil && node.right == nil {
            return node.description + inorderPrint(node:node.left!)
        }
        if node.left == nil && node.right != nil {
            return node.description + inorderPrint(node:node.right!)
        }
        return inorderPrint(node:node.left!) + node.description + inorderPrint(node:node.right!)
    }
    
    // Time : O(n), Space : O(1). Optimal tree traversal algorithm
    func morrisTraversal(_ root: Node?) -> [Int]{
        var curr = root
        var arr : [Int] = Array()
        while curr != nil{
            if curr?.left == nil{
                arr.append(curr!.value)
                curr = curr?.right
            }else{
                var predecessor = findRightPredecessor(node: curr?.left)
                if predecessor?.right == nil{
                    predecessor?.right = curr
                    curr = curr?.left
                    
                }else{
                    predecessor?.right = nil
                    arr.append(curr!.value)
                    curr = curr?.right
                }

            }
        }
        return arr
    }
    
    func findRightPredecessor(node : Node?) -> Node?{
        var pred : Node? = node
        while pred?.right != nil {
            pred = pred?.right
        }
        return pred
    }



}
/*
    1
  2   3
 4 5
 
 BFS level order: 1,2,3,4,5
 
 DFS in order: 4,2,5,1,3
 DFS pre order: 1,2,4,5,3
 DFS post order: 4,5,2,3,1
 */

let tree = BinaryTree(val: 1)
tree.root?.left = Node(val: 2)
tree.root?.right = Node(val: 3)
tree.root?.left?.left = Node(val: 4)
tree.root?.left?.right = Node(val: 5)
let n1 = Node(val: 1)

tree.preorderPrint(node: tree.root)
tree.preorderSearch(node: tree.root, value: 7)
tree.postorderPrint(node: tree.root)


tree.printTree(traversal: .preorder)
tree.printTree(traversal: .postorder)
tree.printTree(traversal: .inorder)
//tree.printTree(traversal: .bfsLevelorder)
tree.printTree(traversal: .bfsLevelorderQueue)

tree.bstInsert(node: tree.root, value: 7)
tree.bstInsert(node: tree.root, value: 2)
tree.bstInsert(node: tree.root, value: 8)

tree.printTree(traversal: .postorder)
tree.printTree(traversal: .inorder)
tree.printTree(traversal: .preorder)


//var tree2 = BinaryTree(val: 1)
//tree2.bstInsert(node: tree2.root, value: 2)
////tree2.bstInsert(node: tree2.root, value: 3)
//let x = tree2.treeString(traversal: .preorder)
//print(x)


tree.morrisTraversal(tree.root)
