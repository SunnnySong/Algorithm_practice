func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var array = Array(1...input[0])
    
    for _ in 0..<input[1] {
        let num = readLine()!.split(separator: " ").map { Int($0)! }
        let start = num[0]-1
        let end = num[1]-1
        
        let reversed = (array[start...end]).reversed()
        array.replaceSubrange(start...end, with: reversed)
    }
    array.forEach { print($0, terminator: " ") }
}

solution()