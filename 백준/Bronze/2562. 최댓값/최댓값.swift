func solution2562() {
    
    var max = 0
    var index = 0
    
    for i in 0..<9 {
        let input = Int(readLine()!)!
        
        if max < input {
            max = input
            index = i
        }
    }
    print(max)
    print(index+1)
}

solution2562()