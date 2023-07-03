import Foundation

func solution() {
    guard let input = Int(readLine()!), input != 1 else {
        return
    }
    var result = factorization(input)
    
    while result.1 == true {
        result = factorization(result.0)
    }
}

func factorization(_ num: Int) -> (Int, Bool) {
    
    if num < 4 {
        print(num)
        return (num, false)
    } else {
        var result = (num, false)
        
        for i in 2...Int(sqrt(Double(num))) {
            if num % i == 0 {
                result = (num / i, true)
                print(i)
                break
            }
        }
        
        if result == (num, false) {
            print(num)
        }
        return result
    }
}

solution()