func solution() {
    let input = Int(readLine()!)!

    var number = 3
    var multiple = 1
    
    for _ in 1..<input {
        multiple *= 2
        number += multiple
    }
    print(number  * number)
}

solution()