import Foundation

enum Angle: Int, CaseIterable {
    case one = 1
    case two = 2
    case three = 3
    case four = 4
    
    var range: Range<Int> {
        switch self {
        case .one:
            return 1..<90
        case .two:
            return 90..<91
        case .three:
            return 91..<180
        case .four:
            return 180..<181
        }
    }
}

func solution(_ angle:Int) -> Int {
    
    var result = 0
    
    Angle.allCases.forEach { each in
        if each.range.contains(angle) {
            result = each.rawValue
        }
    }
    return result
}