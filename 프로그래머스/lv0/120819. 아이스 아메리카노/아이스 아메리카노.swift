import Foundation

func solution(_ money:Int) -> [Int] {
    
    let americanoPrice = 5500
    
    let account = money / americanoPrice
    let rest = money % americanoPrice
    
    return [account, rest]
}