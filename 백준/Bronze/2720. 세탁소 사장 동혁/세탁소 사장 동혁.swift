enum Cent: Int, CaseIterable {
    case quarter = 25
    case dime = 10
    case nickel = 5
    case penny = 1
}

func solution() {
    let count = Int(readLine()!)!
    
    for _ in (0..<count) {
        var input = Int(readLine()!)!
        var result = [Int]()

        Cent.allCases.forEach { cent in
            result.append(input / cent.rawValue)
            input = input % cent.rawValue
        }
        result.forEach { print($0, terminator: " ") }
    }
}

solution()