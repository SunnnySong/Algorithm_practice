import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    
    var even = 0
    var odd = 0
    num_list.forEach { num in
        if num % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    return [even, odd]
}