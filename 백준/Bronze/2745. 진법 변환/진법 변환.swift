func solution() {
    let input = readLine()!.split(separator: " ")
    let string = input[0]
    let arithmetic = Int(input[1])!
    
    print(Int(string, radix: arithmetic)!)
}

solution()