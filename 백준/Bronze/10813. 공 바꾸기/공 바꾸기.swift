func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var array = Array(1...input[0])
    
    for _ in 0..<input[1] {
        let num = readLine()!.split(separator: " ").map { Int($0)! }
        array.swapAt(num[0]-1, num[1]-1)
    }
    array.forEach { print($0, terminator: " ") }
}

solution()