func solution() {
    var dictionary = [String: Int]()

    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]

    for _ in 0..<n {
        dictionary[readLine()!, default: 0] += 1
    }

    for _ in 0..<m {
        dictionary[readLine()!, default: 0] += 1
    }

    for (key, value) in dictionary {
        if value != 2 {
            dictionary.removeValue(forKey: key)
        }
    }
    print(dictionary.count)
    dictionary.keys.sorted().forEach {
        print($0, terminator: "\n")
    }
}

solution()