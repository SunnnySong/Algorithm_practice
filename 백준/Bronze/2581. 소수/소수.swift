import Foundation

func solution() {
    let m = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    var array = [Int]()
    
    for i in m...n {
        if findPrimes(num: i) == true {
            array.append(i)
        }
    }
    
    if array.isEmpty {
        print(-1)
    } else {
        print(array.reduce(0, +))
        print(array[0])
    }
}

func findPrimes(num: Int) -> Bool {
    if num < 4 {
        return num == 1 ? false : true
    }
    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 {
            return false
        }
    }
    return true
}

solution()