func solution() {
    let input = Int(readLine()!)!
    var sum = 0

    for i in 1...input {
        let number = Array(String(i))
        sum = i

        for h in 0..<number.count {
            sum += Int(String(number[h]))!

            if sum > input {
                break
            }
        }

        if sum == input {
            print(i)
            break
        }
    }

    if sum != input {
        print(0)
    }
}

solution()