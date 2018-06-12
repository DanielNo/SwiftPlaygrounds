//: Playground - noun: a place where people can play

import UIKit


protocol UserInfo {
    var name : String? {get set}
    var address : String? {get set}
    var uniqueID : Int64 {get set}
    var primaryPhoneNumber : Int? {get set}
    var secondaryPhoneNumber : Int? {get set}
    var emailAddress : String? {get set}
    
    func exampleProtocolMethod() -> Void

}


public class Person : UserInfo, Emailable {
    func sendEmail(_ emailAddress: String) {
        
    }
    
    func exampleProtocolMethod() {
        print("implement this method")
    }
    
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


