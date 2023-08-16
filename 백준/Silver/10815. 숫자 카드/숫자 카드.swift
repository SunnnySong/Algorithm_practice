func solution() {
    _ = Int(readLine()!)!
    var set = Set<String.SubSequence>()
    _ = readLine()!.split(separator: " ").map { set.insert($0) }

    _ = Int(readLine()!)!
    let input: [String] = readLine()!.split(separator: " ").map {
        if set.contains($0) {
            return "1"
        } else {
            return "0"
        }
    }
    print(input.joined(separator: " "))
}

solution()