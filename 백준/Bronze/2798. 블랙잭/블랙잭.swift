func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let cards = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    var result = 0

    for a in 0..<n {
        for b in a+1..<n {
            for c in b+1..<n {
                let sum = cards[a] + cards[b] + cards[c]
                if result < sum && sum <= m {
                    result = sum
                }
            }
        }
    }
    print(result)
}

solution()