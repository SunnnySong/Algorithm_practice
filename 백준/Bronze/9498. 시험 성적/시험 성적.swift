func solution() {
    
    let input = Int(readLine()!)!
    if (90...100).contains(input) {
        print("A")
    } else if (80...89).contains(input) {
        print("B")
    } else if (70...79).contains(input) {
        print("C")
    } else {
        print((60...69).contains(input) ? "D" : "F")        
    }
}

solution()