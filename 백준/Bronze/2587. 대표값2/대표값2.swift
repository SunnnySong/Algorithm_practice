func solution() {
    var array = [Int]()

    for _ in 0..<5 {
        let number = Int(readLine()!)!
        array.append(number)
    }

    let average = array.reduce(0, +) / array.count
    let index = array.count / 2
    print(average)
    print(array.sorted()[index])
}

solution()