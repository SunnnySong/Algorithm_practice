func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var array = [Int]()
    for i in (1...input[0]) { array.append(i) }
    
    for _ in 0..<input[1] {
        let num = readLine()!.split(separator: " ").map { Int($0)! }
        let first = array[num[0] - 1]
        let second = array[num[1] - 1]
        array[num[0] - 1] = second
        array[num[1] - 1] = first
    }
    array.forEach { print($0, terminator: " ") }
}

solution()