import Foundation

public class GenericNode<T>{
    public var description: String
    
    public var value : T
    public var next : GenericNode?
    
    
    public init(val : T) {
        self.value = val
        self.description = String(describing: value)
    }
    
    public func add(node : GenericNode){
        self.next = node
    }
    
    public func printNode(){
        print(self.description)
    }
    
    static public func printAllValues(node : GenericNode?){
        var curr = node
        var desc = ""
        while curr != nil {
            if desc == ""{
                desc = curr!.description
            }else{
                desc += ", \(curr!.description)"
            }
            curr = curr?.next
        }
        print("\(desc)")
    }
}

var node = GenericNode(val: 1)
node.add(node: GenericNode(val: 2))
GenericNode.printAllValues(node: node)
print(node.value)
