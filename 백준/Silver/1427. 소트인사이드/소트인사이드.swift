func solution() {
    let input = Array(readLine()!).map { Int(String($0))! }.sorted(by: >)

    print(input.reduce(into: "") { $0 += "\($1)" })
}

solution()