import Foundation

func solution2525() {
    
    let input1 = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }
    let cookingTime = Int(readLine()!) ?? 0
        
    var hour = input1[0]
    let minutes = input1[1]

    var totalTime = minutes + cookingTime
    
    if totalTime > 59 {
        
        let plusHours = totalTime / 60
        totalTime = totalTime % 60
        
        hour += plusHours
        
        if hour > 23 {
            hour = hour - 24
        }
    }
    
    print("\(hour) \(totalTime)")
}

solution2525()