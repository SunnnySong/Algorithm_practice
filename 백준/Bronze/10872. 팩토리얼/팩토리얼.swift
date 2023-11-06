func solution() {
    let input = Int(readLine()!)!
    var array = [Int]()

    if input == 0 {
        print("1")
    } else {
        for i in 1...input {
            array.append(i)
        }
        print(array.reduce(1, *))
    }
}

solution()