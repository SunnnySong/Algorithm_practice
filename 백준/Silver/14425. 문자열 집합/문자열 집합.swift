func solution() {
    let number = readLine()!.split(separator: " ").map { Int($0)! }
    let n = number[0], m = number[1]
    var set = Set<String>()

    var result = 0

    for _ in 0..<n {
        let input = readLine()!
        set.insert(input)
    }

    for _ in 0..<m {
        let input = readLine()!
        if set.contains(input) {
            result += 1
        }
    }

    print(result)
}

solution()