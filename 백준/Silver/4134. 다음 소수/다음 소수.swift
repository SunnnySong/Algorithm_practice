import Foundation

func solution() {
    let count = Int(readLine()!)!

    for _ in 0..<count {
        let num = Int(readLine()!)!

        for i in num...4000000000000 {
            if 소수구하기(num: i) {
                print(i)
                break
            }
        }
    }

}

func 소수구하기(num: Int) -> Bool {
    if num < 4 {
        return num == 1 || num == 0 ? false : true
    }

    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 {
            return false
        }
    }
    return true
}

solution()