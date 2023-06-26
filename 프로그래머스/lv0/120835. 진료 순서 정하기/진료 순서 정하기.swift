import Foundation

func solution(_ emergency: [Int]) -> [Int] {
    var dictionary: [Int: Int] = [:]
    
    for (index, value) in emergency.sorted(by: >).enumerated() {
        dictionary[value] = index + 1
    }
    return emergency.map { dictionary[$0]! }
}