func solution() {
    let count = Int(readLine()!)!
    var array = Set<String>()

    for _ in 0..<count {
        let input = readLine()!
        array.insert(input)
    }

    let sorted = array.sorted { pre, next in
        if pre.count == next.count && pre != next {
            return pre < next ? true : false
        } else {
            return pre.count < next.count ? true : false
        }
    }
    sorted.forEach { print($0, terminator: "\n") }
}

solution()