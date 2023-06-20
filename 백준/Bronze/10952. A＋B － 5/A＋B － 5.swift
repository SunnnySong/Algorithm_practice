import Foundation

func solution10952() {
    
    while let input = readLine() {
        if input == "0 0" {
            break
        }
        
        let number = input.components(separatedBy: " ").map { Int($0) ?? 0 }
        print(number[0] + number[1])
    }
}

solution10952()