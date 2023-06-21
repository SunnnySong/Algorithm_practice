enum Grade: String {
    case plusA = "A+"
    case zeroA = "A0"
    case plusB = "B+"
    case zeroB = "B0"
    case plusC = "C+"
    case zeroC = "C0"
    case plusD = "D+"
    case zeroD = "D0"
    case F = "F"
    
    var score: Double {
        switch self {
        case .plusA:
            return 4.5
        case .zeroA:
            return 4.0
        case .plusB:
            return 3.5
        case .zeroB:
            return 3.0
        case .plusC:
            return 2.5
        case .zeroC:
            return 2.0
        case .plusD:
            return 1.5
        case .zeroD:
            return 1.0
        case .F:
            return 0
        }
    }
}

func solution2941() {
    
    var total: Double = 0
    var totalScore: Double = 0
    
    for _ in 0..<20 {
        let input = readLine()!.split(separator: " ")
        let score = Double(input[1])!
        guard let grade = Grade(rawValue: String(input[2])) else {
            continue
        }
        
        total += score * grade.score
        totalScore += score
    }
    print(total / totalScore)
}

solution2941()