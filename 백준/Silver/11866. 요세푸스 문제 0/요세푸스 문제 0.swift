func solution() {
    let queue = Queue(enqueue: [])

    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], k = input[1]
    var result = [Int]()

    for i in 1...n {
        queue.push(i)
    }

    var index = 1
    while result.count != n {
        if index % k != 0 {
            let num = queue.pop()!
            queue.push(num)
            index += 1
        } else {
            let num = queue.pop()!
            result.append(num)
            index += 1
        }
    }

    let printString = result.map { String($0) }.joined(separator: ", ")
    print("<\(printString)>")
}

class Queue {
    var enqueue: [Int]
    var dequeue = [Int]()

    var count: Int {
        return enqueue.count + dequeue.count
    }

    init(enqueue: [Int]) {
        self.enqueue = enqueue
    }

    func push(_ num: Int) {
        enqueue.append(num)
    }

    func pop() -> Int? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
}

solution()