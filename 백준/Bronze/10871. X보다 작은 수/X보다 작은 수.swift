func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[1]
    
    nums.forEach {
        if x > $0 {
            print($0, terminator: " ")
        }
    }
}

solution()