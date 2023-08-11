func solution() {
    let count = Int(readLine()!)!
    var array = [Int]()

    for _ in 0..<count {
        let number = Int(readLine()!)!
        array.append(number)
    }

    array.sorted().forEach { print($0, terminator: "\n")}
}

solution()