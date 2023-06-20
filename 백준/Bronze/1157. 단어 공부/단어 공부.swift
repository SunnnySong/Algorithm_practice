// 1번째 방법
func solution1152() {
    
    let input = Array(readLine()!)
    
    var dictionay: [String: Int] = [:]
    input.forEach { value in
        let uppercasedString = value.uppercased()
        dictionay[String(uppercasedString), default: 0] += 1
    }
    
    var maxCount = 0
    var maxString = ""
    for (key, value) in dictionay {
        if maxCount < value {
            maxString = key
            maxCount = value
        } else if maxCount == value {
            maxString += key
        }
    }
    print(maxString.count > 1 ? "?" : "\(maxString)")
}

solution1152()

// 2번째 방법
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
