func solution() {
    let count = Int(readLine()!)!
    let queue = Queue(enqueue: [])

    for i in 1...count {
        queue.push(i)
        // 4321
    }

    while queue.count > 1 {
        let _ = queue.pop()
        // 432
        let last = queue.pop()  // 2
        queue.push(last!) // 243
    }

    print(queue.enqueue.last!)
}

solution()

class Queue {
    var enqueue: [Int]
    var dequeue = [Int]()

    var isEmpty: Bool {
        return enqueue.isEmpty && dequeue.isEmpty
    }

    var count: Int {
        return enqueue.count + dequeue.count
    }

    init(enqueue: [Int]) {
        self.enqueue = enqueue
    }

    func push(_ n: Int) {
        enqueue.append(n)
    }

    func pop() -> Int? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
}