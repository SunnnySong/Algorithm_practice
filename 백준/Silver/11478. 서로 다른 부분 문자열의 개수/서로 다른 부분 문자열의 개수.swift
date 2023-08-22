func solution() {
    var set = Set<String>()
    let input = Array(readLine()!)

    for i in 0..<input.count {
        var string = ""

        for h in i..<input.count {
            string += String(input[h])
            set.insert(string)
        }
    }
    print(set.count)
}

solution()