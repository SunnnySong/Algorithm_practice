func solution() {
    let count = Int(readLine()!)!
    var array = [[Int]]()

    for _ in 0..<count {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        array.append(input)
    }

    let sorted = array.sorted { pre, next in
        if pre[1] == next[1] {
            return pre[0] < next[0] ? true : false
        } else {
            return pre[1] < next[1] ? true : false
        }
    }
    sorted.forEach { print($0.map { String($0 )}.joined(separator: " "), terminator: "\n")}
}

solution()