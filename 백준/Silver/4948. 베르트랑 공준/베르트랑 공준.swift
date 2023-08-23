import Foundation

func solution() {

    while let input = Int(readLine()!), input != 0 {
        var account = 0
        for i in input+1...2 * input {
            if 소수구하기(num: i) {
                account += 1
            }
        }
        print(account)
    }
}

func 소수구하기(num: Int) -> Bool {
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