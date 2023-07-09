func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    var array = [1, 1, 2, 2, 2, 8]
    for i in 0..<array.count {
        array[i] = array[i] - input[i]
    }
    array.forEach { print($0, terminator: " ") }
}

solution()