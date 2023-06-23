func solution() {
    
    var matrix = Array(repeating: Array<String?>(repeating: nil, count: 15), count: 5)
    
    for i in 0..<5 {
        let input = Array(readLine()!)
        for (index, value) in input.enumerated() {
            matrix[i][index] = String(value)
        }
    }
    var result = ""

    for h in 0..<15 {
        for i in 0..<5 {
            guard let string = matrix[i][h] else {
                result += ""
                continue
            }
            result += "\(string)"
        }
    }
    print(result)
}

solution()