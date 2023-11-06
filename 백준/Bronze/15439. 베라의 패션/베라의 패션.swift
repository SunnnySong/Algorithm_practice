func solution() {
    let input = Int(readLine()!)!
    var acc = 0
    
    if input == 1 {
        print("0")
    } else {
        for i in 1...(input - 1) {
            for h in (i + 1)...input {
                acc += 1
            }
        }
        print(acc * 2)
    }
}

solution()