func solution() {
    let _ = readLine()
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    let number = Int(readLine()!)
    
    print(nums.filter { $0 == number }.count)
}

solution()