import Foundation

func solution2884() {
    
    let input = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }
    var hour = input[0]
    var minutes = input[1]
    
    let preSetting: Int = 45
    
    if minutes < preSetting {
        if hour == 0 {
            hour = 24
        }
        hour -= 1
        minutes += 60
    }
    
    print("\(hour) \(minutes - preSetting)")
}

solution2884()
