func solution1157() {
    
    let input = readLine()!.uppercased()
    
    var dictionay: [Character: Int] = [:]
    input.forEach { value in
        dictionay[value, default: 0] += 1
    }
    
    let maxCount = dictionay.values.max()!
    let maxCharacter = dictionay.filter { $0.value == maxCount }.keys
   
    print(maxCharacter.count > 1 ? "?" : "\(maxCharacter.first!)")
}

solution1157()