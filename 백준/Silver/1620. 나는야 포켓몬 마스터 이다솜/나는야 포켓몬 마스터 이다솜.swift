func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]

    var a: [Int: String] = [:]
    var b: [String: Int] = [:]

    for i in 1...n {
        let input = readLine()!
        a[i] = input
        b[input] = i
    }

    for _ in 0..<m {
        let input = readLine()!

        if let number = Int(input) {
            print(a[number]!)
        } else {
            print(b[input]!)
        }
    }
}

solution()