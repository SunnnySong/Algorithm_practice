func solution2941() {
        
    let count = Int(readLine()!)!
    var result = 0
    
    for _ in 0..<count {
        let input = readLine()!
        var checker = [Character]()
        var check: Bool = true
        
        input.forEach { character in
            if !checker.contains(character) {
                checker.append(character)
            } else if checker.last! != character {
                check = false
            }
        }
        
        result += check == true ? 1 : 0
    }
    print(result)
}

solution2941()
