import Foundation

func solution(_ dot:[Int]) -> Int {
    
    let bool: [Bool] = dot.map { $0 > 0 ? true : false }
    
    let result = dotToNumber(bool[0], bool[1])
    return result
}

func dotToNumber(_ x: Bool, _ y: Bool) -> Int {
    
    switch (x, y) {
    case (true, true):
        return 1
    case (true, false):
        return 4
    case (false, true):
        return 2
    case (false, false):
        return 3
    }
}