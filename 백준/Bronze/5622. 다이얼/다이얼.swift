func solution() {
    let alphabet = ["abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
    
    var time = 0
    let input = readLine()!.lowercased()
    
    input.forEach { character in
        alphabet.enumerated().forEach { (index: Int, str: String) in
            if str.contains(character) {
                time += (index + 3)
            }
        }
    }
    
    print(time)
}

solution()