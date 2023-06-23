func solution() {
    
    var max = 0
    var row = 0
    var column = 0
    
    for i in 1...9 {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let maxOfLine = input.max()!
        
        if maxOfLine >= max {
            max = maxOfLine
            row = i
            column = input.firstIndex(of: maxOfLine)! + 1
        }
    }
    
    print(max)
    print(row, column)
}

solution()