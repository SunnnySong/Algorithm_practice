func solution() {
    let first = readLine()!.split(separator: " ").map { Int($0)! }
    let second = readLine()!.split(separator: " ").map { Int($0)! }

    let 분모 = 최소공배수(first[1], second[1])
    let 분자 = ((분모 / first[1]) * first[0]) + ((분모 / second[1]) * second[0])

    let num = 최대공약수(분모, 분자)
    if num != 1 {
        print(분자 / num, 분모 / num)
    } else {
        print(분자, 분모)
    }
}

func 최소공배수(_ a: Int, _ b: Int) -> Int {
    return a * b / 최대공약수(a, b)
}

func 최대공약수(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return 최대공약수(b, a % b)
    }
}

solution()