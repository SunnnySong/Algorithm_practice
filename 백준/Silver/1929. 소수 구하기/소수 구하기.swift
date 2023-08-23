import Foundation

func solution() {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }

    for i in numbers[0]...numbers[1] {
        if 소수구하기(num: i) {
            print(i)
        }
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