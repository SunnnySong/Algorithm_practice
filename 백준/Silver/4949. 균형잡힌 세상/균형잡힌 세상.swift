func solution() {
    while let input = readLine(), input != "." {
        var array = [String.Element]()

        var empty = false
        for i in Array(input) {
            switch i {
            case "(":
                array.append(i)
            case "[":
                array.append(i)
            case ")":
                guard let output = array.popLast(), output == "(" else {
                    empty = true
                    break
                }
            case "]":
                guard let output = array.popLast(), output == "[" else {
                    empty = true
                    break
                }
            default:
                continue
            }
        }
        if array.isEmpty && !empty {
            print("yes")
        } else {
            print("no")
        }
    }
}

solution()