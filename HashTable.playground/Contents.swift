//: Playground - noun: a place where people can play

import UIKit


public struct GenericHashTable<Key : Hashable, T>{
    fileprivate var values : [T]?

    init() {
        values = [T]()
        values?.reserveCapacity(100)
        values?.reserveCapacity(100)
        
    }
    
    public func setValue(key : T,value : T){
        
        
    }
    
    public func hashValue(value : T) -> Int{
        return 0
    }
    
}

public struct StringHashTable{
    fileprivate var values : [String]?
    
    init() {
        values = [String]()
    }
    
    public func setValueForKey(key : String, value : String){
        
        
    }
    
    public func hashValue(value : String) -> String{
        print(value.hashValue)
        return ""
    }
    
}

let x = "b"
let y = x.hashValue

var dict = GenericHashTable<Int,Int>()
dict.values?.count

