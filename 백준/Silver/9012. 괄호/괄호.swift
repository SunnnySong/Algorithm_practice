func solution() {
    let count = Int(readLine()!)!

    for _ in 0..<count {
        var stack = [String.Element]()
        let input = Array(readLine()!)
        var result = true

        for i in input {
            if i == "(" {
                stack.append(i)
            } else {
                if !stack.isEmpty {
                    stack.removeLast()
                } else {
                    result = false
                }
            }
        }
        if !result {
            print("NO")
        } else {
            print(stack.isEmpty ? "YES" : "NO")
        }
    }
}
solution()