func solution() {
    let input = Int(readLine()!)!
    var count = 0
    var empty = input
    
    for i in 0..<input {
        count = i * 2 + 1
        empty -= 1
        print(String(repeating: " ", count: empty), terminator: "")
        print(String(repeating: "*", count: count))
    }
    for _ in 1..<input {
        count -= 2
        empty += 1
        print(String(repeating: " ", count: empty), terminator: "")
        print(String(repeating: "*", count: count))
    }
}

solution()