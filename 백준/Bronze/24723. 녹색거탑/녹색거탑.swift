func solution() {
    let input = Int(readLine()!)!

    var num = 1

    for _ in 1...input {
        num = num * 2
    }
    print(num)
}

solution()