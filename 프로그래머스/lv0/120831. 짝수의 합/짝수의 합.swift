import Foundation

func solution(_ n:Int) -> Int {
    let result = (1...n).reduce(into: 0) { pre, next in
        if next % 2 == 0 {
            pre += next
        }
    }
    return result
}