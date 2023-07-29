func solution() {
    let input = Int(readLine()!)!
    var sum = 0
    var m = 0

    for i in 1...input {
        sum = i

        for h in String(i) {
            sum += Int(String(h))!
        }

        if sum == input {
            m = i
            break
        }
    }

    print(m)
}

solution()