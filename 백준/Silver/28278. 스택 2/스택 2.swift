func solution() {
    let count = Int(readLine()!)!
    var stack = [Int]()

    for _ in 0..<count {
        let input = readLine()!

        switch Int(input) {
        case 2:
            print(stack.popLast() ?? -1)
        case 3:
            print(stack.count)
        case 4:
            print(stack.isEmpty ? 1 : 0)
        case 5:
            print(stack.last ?? -1)
        default:
            let numbers = Int(input.split(separator: " ").last!)!
            stack.append(numbers)
        }
    }
}

solution()