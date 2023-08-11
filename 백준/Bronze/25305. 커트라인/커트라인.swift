func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let k = input[1]
    let grade = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)

    print(grade[k-1])
}

solution()