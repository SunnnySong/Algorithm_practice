func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let w = input[2], h = input[3], x = input[0], y = input[1]
    
    let result = [abs(0 - x), abs(w - x), abs(0 - y), abs(h - y)].min()
    print(result!)
}

solution()