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