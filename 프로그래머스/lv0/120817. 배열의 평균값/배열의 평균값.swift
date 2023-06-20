import Foundation

func solution(_ numbers: [Int]) -> Double {
    
      let account = numbers.reduce(into: 0) { pre, next in
        pre += next
    }
    
    return Double(account) / Double(numbers.count)
}