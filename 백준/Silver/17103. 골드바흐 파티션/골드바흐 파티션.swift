import Foundation

func solution() {
    var primes = [Bool](repeating: false, count: 1_000_000 + 1)

    for i in 0...1_000_000 {
        primes[i] = prime(i)
    }

    let t = Int(readLine()!)!

    for _ in 1...t {
        let input = Int(readLine()!)!
        var account = 0

        for i in 0...input/2 {
            if primes[i] && primes[input - i] {
                account += 1
            }
        }

        print(account)
    }
}

// 소수 구하는 함수
func prime(_ num: Int) -> Bool {
    if num < 4 {
        return num <= 1 ? false : true
    }

    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 {
            return false
        }
    }

    return true
}

solution()