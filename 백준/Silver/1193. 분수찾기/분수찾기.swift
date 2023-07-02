func solution() {
    let input = Int(readLine()!)!
    var count = 1
    
    for i in 1...10000000 {
        let a = input - count + 1
        let b = i - (input - count)
        
        if (count..<count+i).contains(input) {
            print( i % 2 == 0 ? "\(a)/\(b)" : "\(b)/\(a)")
        }
        count += i
    }
}

solution()