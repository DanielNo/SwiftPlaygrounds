//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import Combine

class MyViewController : UIViewController {    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
}
PlaygroundPage.current.liveView = MyViewController()

//////////////////////////////////////////////////////////////////

// Basic Publisher from Data Structure and objects
let helloPublisher = "Hello Combine".publisher
let fibonacciPublisher = [0,1,1,2,3,5].publisher
let dictPublisher = [1:"Hello",2:"World"].publisher

// Subscribe to publisher by calling sink
fibonacciPublisher.sink { (num) in
    print(num)
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


func subscribeToCarCharge() {
  car.$kwhInBattery
    .map { "Car's charge is \($0)" }
    .assign(to: \.text, on: label)
    .store(in: &cancellables)
}
