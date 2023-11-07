func solution() {
    let n = Int(readLine()!)!

    print(factorial(n))
}

func factorial(_ num: Int) -> Int {
    if num == 0 { return 1 }
    return num * factorial(num - 1)
}

solution()