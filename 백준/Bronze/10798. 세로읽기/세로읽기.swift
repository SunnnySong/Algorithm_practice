func solution() {
    
    var matrix = [[Character?]]()
    var maxCount = 0
    
    for _ in 0..<5 {
        let input = Array(readLine()!)
        matrix.append(input)
        
        if maxCount < input.count {
            maxCount = input.count
        }
    }
    
    var result = ""
    
    for h in 0..<maxCount {
        for i in 0..<5 {
            if matrix[i].count < maxCount {
                for _ in matrix[i].count..<maxCount {
                    matrix[i].append(nil)
                }
            }
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