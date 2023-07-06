func solution() {
    var array = Set<Int>()
    let number = 42
    
    for _ in 0..<10 {
        let input = Int(readLine()!)!
        array.insert(input % number)
    }
    print(array.count)
}

solution()