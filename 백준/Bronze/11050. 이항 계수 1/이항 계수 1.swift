func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], k = input[1]
    let 분모 = factorial(n)
    let 분자 = factorial(n-k) * factorial(k)
    print(분모 / 분자)
}

func factorial(_ num: Int) -> Int {
    if num == 0 { return 1 }
    return num * factorial(num - 1)
}

solution()