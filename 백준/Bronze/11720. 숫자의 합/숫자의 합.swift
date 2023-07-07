func solution() {
    let _ = readLine()!
    let input = Array(readLine()!)
    
    let result = input.reduce(into: 0) { pre, next in
        pre += Int(String(next))!
    }
    print(result)
}

solution()