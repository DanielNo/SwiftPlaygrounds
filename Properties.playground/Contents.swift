import UIKit

public class Properties{
    
    var closureInitializedProperty : String = {
        // Can't use self here
        //    return "hello" + self.name
    return "hello"
    }()

    var computedProperty : Int {
        return self.storedProperty1 + self.storedProperty2
    }

    let storedProperty1 = 10
    let storedProperty2 = 40
    let name = "john"
    
    // public getter, private setter. Can only be set by the class that defines it
    private(set) var myProperty : Int
    
    
    
    init(){
        myProperty = 1
    }
    
    func test(){
        myProperty = 2302 // setter is accessible inside the defining class
    }
    
    
    
    
}

public class TestingClass{
    let instance = Properties()
    
    func doSomething() -> Void{
        print(instance.myProperty)
        
        // Results in a compiler error:
        // instance.myProperty = 23
    }
    
}

let tester = TestingClass()
tester.doSomething()
