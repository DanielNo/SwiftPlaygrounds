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

}
