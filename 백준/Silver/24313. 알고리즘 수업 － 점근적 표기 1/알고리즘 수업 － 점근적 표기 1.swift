func solution() {
    let a = readLine()!.split(separator: " ").map { Int($0)! }
    
    let c = Int(readLine()!)!
    let n = Int(readLine()!)!
    let fn = a[0]*n + a[1]
    
    if fn <= c * n && c >= a[0] {
        print(1)
    } else {
        print(0)
    }
}

solution()