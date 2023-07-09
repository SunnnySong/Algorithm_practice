
func solution() {
    let a = readLine()!.split(separator: " ").map { Double($0)! }
    print(a[0]/a[1])
}

solution()