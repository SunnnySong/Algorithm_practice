func solution() {
    var stack = [Int]()
    let count = Int(readLine()!)!

    for _ in 0..<count {
        guard let input = Int(readLine()!), input != 0 else {
            stack.removeLast()
            continue
        }

        stack.append(input)
    }
    print(stack.reduce(into: 0, { partialResult, next in
        partialResult += next
    }))
}
solution()