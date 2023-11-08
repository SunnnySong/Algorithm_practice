func solution() {
    let n = Int(readLine()!)!

    star(n: n, pattern: ["*"])
}

func star(n: Int, pattern: [String]) {
    if n == 1 {
        pattern.forEach {
            print($0)
        }
        return
    }

    let start = pattern.map { $0 + $0 + $0 }
    let middle = pattern.map { $0 + String(repeating: " ", count: $0.count) + $0 }

    star(n: n / 3, pattern: start + middle + start)
}

solution()