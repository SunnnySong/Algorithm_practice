func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var array = [1]
    
    for i in 2...input[0]/2 {
        if input[0] % i == 0 {
            array.append(i)
        }
    }
    array.append(input[0])
    
    if array.count < input[1] {
        print(0)
    } else {
        print(array[input[1]-1])
    }
}

solution()