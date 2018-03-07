//: Playground - noun: a place where people can play

import UIKit


protocol ContactInfo {
    var name : String? {get set}
    var address : String? {get set}
    var uniqueID : Int64 {get set}
    var primaryPhoneNumber : Int? {get set}
    var secondaryPhoneNumber : Int? {get set}
    var emailAddress : String? {get set}
    
    

}

public class Person : ContactInfo {
    var name: String?
    
    var address: String?
    
    var uniqueID: Int64 {
        get{
            return self.uniqueID
        }
        set{
            self.uniqueID = newValue
        }
        
    }
    
    var primaryPhoneNumber: Int?
    
    var secondaryPhoneNumber: Int?
    
    var emailAddress: String?
    
    
    
}

