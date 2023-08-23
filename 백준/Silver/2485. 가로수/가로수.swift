func solution() {
    let count = Int(readLine()!)!
    var array = [Int]()

    var preNum = 0
    for i in 0..<count {
        let num = Int(readLine()!)!

        if i != 0 {
            array.append(num - preNum)
        }
        preNum = num
    }

    var 약수 = array[0]
    for i in 1..<array.count {
        약수 = 최대공약수(약수, array[i])
    }

    let result = array.reduce(into: 0) { pre, next in
        pre += (next / 약수) - 1
    }
    print(result)
}

func 최대공약수(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return 최대공약수(b, a % b)
    }
}

func 최소공배수(_ a: Int, _ b: Int) -> Int {
    return a * b / 최대공약수(a, b)
}

solution()