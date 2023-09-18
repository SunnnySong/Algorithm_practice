func solution() {
    let input = Int(readLine()!)!
    var array = Array.init(repeating: 2000, count: 5001)
    array[3] = 1
    array[5] = 1

    for i in 6...5000 {
        array[i] = min(array[i - 3], array[i-5]) + 1
    }

    if array[input] >= 2000 {
        print(-1)
    } else {
        print(array[input])
    }
}

solution()