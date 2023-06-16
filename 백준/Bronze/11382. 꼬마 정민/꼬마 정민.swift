import Foundation

func solution11382() {
    
    let input = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }
    var result = 0
    
    for num in 0..<input.count {
        result += input[num]
    }
    print(result)
}

solution11382()