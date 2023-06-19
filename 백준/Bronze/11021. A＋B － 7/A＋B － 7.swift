import Foundation

func solution11021() {
    
    let count = Int(readLine()!)!
    
    for number in 1...count {
        print("Case #\(number): \(plus())")
    }
}

func plus() -> Int {
    
    let input = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }
    return input[0] + input[1]
}

solution11021()