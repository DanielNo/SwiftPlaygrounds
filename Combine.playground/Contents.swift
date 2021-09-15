//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import Combine


// Basic Publisher from Data Structure and objects
let helloPublisher = "Hello Combine".publisher
let fibonacciPublisher = [0,1,1,2,3,5].publisher
let dictPublisher = [1:"Hello",2:"World"].publisher

let justPublisher = Just([1,2,3,4,5,6,7,8,9,10])


var myNumber = 0
// Subscribe to publisher by calling sink
fibonacciPublisher.sink { (num) in
    myNumber = num
//    print(myNumber)
}

let subscriber = fibonacciPublisher.sink { (completion) in
    switch completion {
    case .failure(let never):
        print(never)
    case .finished:
        print("finished")
    }
} receiveValue: { (streamValue) in
    print(streamValue)
}

// Can cancel on subscriber by call it directly
subscriber.cancel()


// Subjects are publishers that can call send() method to add values

public struct User : Decodable{
    let id : Int
    let name : String
    let username : String
//    let address
    let phone : String
    let website : String
}

// Network Request
let urlString = "https://jsonplaceholder.typicode.com/users"
func networkRequest() -> AnyPublisher<User,Error>{
//    guard let url = URL(string: urlString) else{
//        return Just([])
//    }
    let url = URL(string: urlString)!
    let urlReq = URLRequest(url: url)
    
    return URLSession.shared.dataTaskPublisher(for: url)
        .tryMap { element -> Data in
            guard let httpResponse = element.response as? HTTPURLResponse,
                httpResponse.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
            return element.data
        }.receive(on: DispatchQueue.main)
        .decode(type: User.self, decoder: JSONDecoder())
        .eraseToAnyPublisher()
}
var cancellable: AnyCancellable
cancellable = networkRequest()
cancellable.cancel()
