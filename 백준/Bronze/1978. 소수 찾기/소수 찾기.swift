func solution() {
    let _ = readLine()!
    let numbers = readLine()!.split(separator: " ").filter { value in
        guard let number = Int(value), number != 1 else {
            return false
        }
        var result = true
        for i in 1..<number {
            if number % i == 0 && i != 1 {
                result = false
            }
        }
        return result
    }
    print(numbers.count)
}

solution()