import Foundation

func solution1152() {
    
    let count = Int(readLine()!)!
    
    for _ in 0..<count {
        
        let input = readLine()!.components(separatedBy: " ")
        let repeatCount = Int(input[0])!
        let string = Array(input[1]).map { String.init(repeating: $0, count: repeatCount)}
        print(string.joined())
    }
}

solution1152()