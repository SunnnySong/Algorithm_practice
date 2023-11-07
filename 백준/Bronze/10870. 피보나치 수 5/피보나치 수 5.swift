func solution() {
    let n = Int(readLine()!)!

    print(피보나치(n))
}

func 피보나치(_ num: Int) -> Int {
    if num == 0 {
        return num
    } else if num == 1 {
        return num
    }

    return 피보나치(num-1) + 피보나치(num-2)
}

solution()