func solution() {
    let input = Int(readLine()!)!
    print(factorial(input))
}

func factorial(_ num: Int) -> Int {
    if num == 0 { return 1 }
    return num * factorial(num - 1)
}

solution()