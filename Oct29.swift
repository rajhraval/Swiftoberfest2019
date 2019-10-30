import Foundation

// If you want one operation to perform sequentially and then execute another then you need to use
// addDependency to make the operation execution sequence clear

let operation1 = BlockOperation {
    print("Operation 1 is starting")
    Thread.sleep(forTimeInterval: 1)
    print("Operation 1 is finishing")
}

let operation2 = BlockOperation {
    print("Operation 2 is starting")
    Thread.sleep(forTimeInterval: 1)
    print("Operation 2 is finishing")
}

// If we add both of them to the operation queue, they would execute immediately, hence add

operation2.addDependency(operation1)

// Which will make Operation 2 wait until Operation 1 has executed

// Another alternative is

print("Adding Operations")
let queue = OperationQueue()
queue.addOperation(operation1)
queue.addOperation(operation2)
queue.waitUntilAllOperationsAreFinished()
print("Done")

// Similarly we can do it with different queues and achieve the same result

print("Adding Operations")
let queue1 = OperationQueue()
let queue2 = OperationQueue()
queue1.addOperation(operation1)
queue2.addOperation(operation2)
// Here the queue waits until queue 1 has finished all it's operation
queue2.waitUntilAllOperationsAreFinished()
print("Done")
