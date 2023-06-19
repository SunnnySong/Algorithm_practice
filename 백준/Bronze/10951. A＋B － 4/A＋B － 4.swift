import Foundation

func solution10951() {
    
    while let input = readLine() {
        let numbers = input.components(separatedBy: " ").map { Int($0) ?? 0 }
        print(numbers[0] + numbers[1])
    }
}

solution10951()
