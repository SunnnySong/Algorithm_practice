func solution2941() {
    
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let input = Array(readLine()!)
    var array = [Int]()
    
    alphabet.forEach { character in
        guard let index: Int = input.firstIndex(of: character) else {
            array.append(-1)
            return
        }
        array.append(index)
    }
    let result = array.map { String($0) }.joined(separator: " ")
    print(result)
}

solution2941()
