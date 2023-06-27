import Foundation

func solution(_ hp:Int) -> Int {
    
    var count = 0
    var remain = hp
    let power: [Int] = [5, 3, 1]
    
    power.forEach { each in
        count += remain / each
        remain = remain % each
    }
    return count
}