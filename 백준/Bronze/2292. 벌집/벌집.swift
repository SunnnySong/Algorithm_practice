func solution() {
    let input = Int(readLine()!)!
    
    var account = 1
    var count = 1
    
    while account < input {
        account += 6 * count
        count += 1
    }
    print(count)
}

solution()