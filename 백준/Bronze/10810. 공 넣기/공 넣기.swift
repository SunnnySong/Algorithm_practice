func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var array = [Int]()
    for _ in (0..<input[0]) { array.append(0) }
    
    for _ in 0..<input[1] {
        let num = readLine()!.split(separator: " ").map { Int($0)! }
        
        for i in (num[0]-1)..<num[1] {
            array[i] = num[2]
        }
    }
    array.forEach { print($0, terminator: " ") }
}

solution()