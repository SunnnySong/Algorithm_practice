import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    
    let dividedNumber = Float(num1) / Float(num2)
    let result: Int = Int(dividedNumber * 1000)
    return result
}