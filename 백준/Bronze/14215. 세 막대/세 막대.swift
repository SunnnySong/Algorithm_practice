func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    let a = input[0], b = input[1], c = input[2]
    let minValue = [c, (a + b - 1)].min()!
    let round = a + b + minValue
    print(round)
}
solution()