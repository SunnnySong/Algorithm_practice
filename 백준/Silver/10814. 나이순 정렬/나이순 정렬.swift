func solution() {
    let count = Int(readLine()!)!
    var array = [[String]]()

    for _ in 0..<count {
        let input = readLine()!.split(separator: " ").map { String($0) }
        array.append(input)
    }

    let sorted = array.sorted { pre, next in
        if pre[0] == next[0] {
            return false
        } else {
            return Int(pre[0])! < Int(next[0])! ? true : false
        }
    }
    sorted.forEach { print($0.joined(separator: " "), terminator: "\n") }
}

solution()