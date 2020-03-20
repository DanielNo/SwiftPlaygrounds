import Foundation

public class ListNode {
    
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public func desc() -> String{
        var str = String(self.val)
        var node = self
        while node.next != nil {
            node = node.next!
            str+="->\(String(node.val))"
        }
        return str
    }
    
    // Was a little difficult to implement due to self not being able to invoke the next variable.
    convenience init(_ arr : [Int]) {
        self.init(0)
        var head : ListNode? // Need another var to traverse the linked list
        for (index,num) in arr.enumerated(){
            if index == 0{
                self.init(num)
                head = self
            }else{
                head?.next = ListNode(num)
                head = head?.next
            }
        }
    }
}
