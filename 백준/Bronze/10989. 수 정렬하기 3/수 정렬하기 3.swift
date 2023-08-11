func solution() {
    let count = Int(readLine()!)!
    var array = Array(repeating: 0, count: 10001)

    for _ in 0..<count {
        let number = Int(readLine()!)!
        array[number] += 1
    }

    var result = ""
    for i in 1...10000 {
        result += String(repeating: "\(i)\n", count: array[i])
    }
    print(result)
}

solution()