func solution1546() {
    
    let count = Float(readLine()!)!
    let grade = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    let maxGrade: Float = Float(grade.max()!)
    let account: Float = grade.reduce(into: 0) { partialResult, next in
        let newGrade: Float = Float(next) / maxGrade * 100
        partialResult += newGrade
    }
    print(account / count)
}

solution1546()