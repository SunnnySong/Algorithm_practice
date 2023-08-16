func solution() {
    let n = Int(readLine()!)!
    var set = Set<String.SubSequence>()

    for _ in 0..<n {
        let input = readLine()!.split(separator: " ")
        let name = input[0]

        if !set.contains(name) {
            set.insert(name)
        } else {
            set.remove(name)
        }
    }

    set.sorted(by: >).forEach { print($0, terminator: "\n") }
}

solution()