func solution() {
    let num = Int(readLine()!)!

    for _ in 0..<num {
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        let a = numbers[0], b = numbers[1]

        print(최소공배수(a, b))
    }
}

func 최소공배수(_ a: Int,_ b: Int) -> Int {
    return a * b / 최대공약수(a, b)
}

func 최대공약수(_ a: Int,_ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return 최대공약수(b, a % b)
    }
}

solution()