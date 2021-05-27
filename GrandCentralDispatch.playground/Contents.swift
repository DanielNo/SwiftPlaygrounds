import UIKit

// Quick execution of block from predefined queue
DispatchQueue.main.async {
//    updateUI()
}

DispatchQueue.global().async {
    // do something
}

// Create a queue
let globalQueue = DispatchQueue.global(qos: .default)
let bgQueue = DispatchQueue(label: "s",qos: .background)



// Dispatch Groups

let group = DispatchGroup()
group.enter()
bgQueue.async {
    print("long running task")
    group.leave()
}
group.wait(timeout: .distantFuture)


// Semaphore

let semaphore = DispatchSemaphore(value: 1)
bgQueue.async {
    semaphore.wait()
    print("do a task, a wait call will decrement the semaphore value by 1")
    
    print("task is done, so we call signal to increment the semaphore value by 1")
    semaphore.signal()
}


