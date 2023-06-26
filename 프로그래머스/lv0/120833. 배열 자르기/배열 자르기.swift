import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    
    var result = [Int]()
    for (index, value) in numbers.enumerated() {
        if (num1...num2).contains(index) {
            result.append(value)
        }
    }
    return result
}