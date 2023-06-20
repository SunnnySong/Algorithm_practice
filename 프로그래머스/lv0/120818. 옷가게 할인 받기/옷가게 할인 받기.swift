import Foundation

enum Price: Int {
   case zeroToOneHundredThousand = 0
    case oneHundredThousand = 100000
    case threeHundredThousand = 300000
    case fiveHundredThousand = 500000
    
    var range: Range<Int> {
        switch self {
        case .zeroToOneHundredThousand:
            return 10..<Price.oneHundredThousand.rawValue
        case .oneHundredThousand:
            return self.rawValue..<Price.threeHundredThousand.rawValue
        case .threeHundredThousand:
            return self.rawValue..<Price.fiveHundredThousand.rawValue
        case .fiveHundredThousand:
            return self.rawValue..<1000001
        }
    }
}

func solution(_ price:Int) -> Int {
    
    if Price.zeroToOneHundredThousand.range.contains(price) {
        return price
    } else if Price.oneHundredThousand.range.contains(price) {
        return Int(Double(price) * 0.95)
    } else {
        return Price.threeHundredThousand.range.contains(price) ? Int(Double(price) * 0.9) : Int(Double(price) * 0.8)
    }
}