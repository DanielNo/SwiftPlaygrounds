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


public class Person : UserInfo {
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
public protocol BaseInfo{
    var name : String {get set}
    var idNumber : Int {get set}
}


public protocol BaseAttributes{
    associatedtype primaryType where primaryType : Equatable
    associatedtype secondaryType
    var pokemonType : Element{
     get set
    }
    var attackMoves : [Attack] {get set}
    
    func attack(moveNumber : Int)
}
public enum Element : Equatable{
    case Fire
    case Water
    case Ice
    case Grass
    case Ghost
    case Shadow
    case Flying
    case Rock
    case Normal
    case Fighting
    case Dragon
    case Lightning
}

public protocol Attack{
    var name : String {get set}
    var type : Element {get set}
    var damage : Int {get set}
    
}

public class Pokemon : BaseAttributes,BaseInfo{
    public typealias primaryType = Element
    
    
    
    public var name: String
    
    public var idNumber: Int
    
    public func attack(moveNumber: Int) {
        print("\(name) : used ")
        
    }
    
    public var attackMoves: [Attack]
    
    public var pokemonType: Element
    
    public typealias secondaryType = Element

    init(type : Element) {
        self.pokemonType = type
        self.attackMoves = [Attack]()
        self.name = ""
        self.idNumber = 0
    }
    


}

let pikachu = Pokemon(type: Element.Lightning)
print(pikachu.pokemonType)
pikachu.attackMoves
