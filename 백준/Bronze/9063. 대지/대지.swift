func solution() {
    
    var x = [Int](), y = [Int]()
    let count = Int(readLine()!)!
    for _ in 0..<count {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        x.append(input[0])
        y.append(input[1])
    }
    
    print((x.max()! - x.min()!) * (y.max()! - y.min()!))
}

solution()