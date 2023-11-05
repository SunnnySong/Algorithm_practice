func solution() {
    let _ = readLine()
    var set = Set<Int>()

    let input = readLine()!.split(separator: " ").map { Int($0)! }
    input.forEach {
        set.insert($0)
    }

    let array = set.sorted()
    var dic: [Int: Int] = [:]

    for (index, value) in array.enumerated() {
        dic[value] = index
    }

    input.forEach { num in
        print(dic[num]!, terminator: " ")
    }
}

solution()