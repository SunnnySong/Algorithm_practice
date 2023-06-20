func solution10818() {
    
    let count = Int(readLine()!)!
    let numbers: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    print(numbers.min()!, numbers.max()!)
}

solution10818()