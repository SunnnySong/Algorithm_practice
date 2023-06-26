import Foundation

func solution(_ n:Int) -> Int {
    
    var result = 0
    
    if n > 1 {
        (1...n/2).forEach { number in
            if n % number == 0 {
                result += 1
                print(number)
            }
        }
        return result + 1
    } else {
        return 1
    }
}