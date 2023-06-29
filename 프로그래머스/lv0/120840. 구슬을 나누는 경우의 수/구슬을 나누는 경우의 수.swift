import Foundation

func solution(_ balls: Int, _ share: Int) -> Int {
    
    guard balls != share else { return 1 }
    guard share != 1 else { return balls }
    
    let denominator = descendingOrder(balls, share)
    let numerator = descendingOrder(balls - share, 1)
    
    return Int(NSDecimalNumber(decimal: (denominator / numerator)))
}

func descendingOrder(_ a: Int, _ b: Int) -> Decimal {
    
    var num = a
    var result: Decimal = 1
    
    while num > b {
        result *= Decimal(num)
        num -= 1
    }
    
    return result
}