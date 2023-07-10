func solution() {
    var x = Set<Int>()
    var y = Set<Int>()
    
    let one = readLine()!.split(separator: " ").map { Int($0)! }
    let two = readLine()!.split(separator: " ").map { Int($0)! }
    let three = readLine()!.split(separator: " ").map { Int($0)! }
    
    x.insert(one[0])
    x.insert(two[0])
    x.insert(three[0])
    y.insert(one[1])
    y.insert(two[1])
    y.insert(three[1])
    
    let arrayX: Array<Int> = Array(x)
    let arrayY: Array<Int> = Array(y)
    
    let point = [[arrayX[0], arrayY[0]], [arrayX[0], arrayY[1]], [arrayX[1], arrayY[0]], [arrayX[1], arrayY[1]]]
    let result = point.filter { $0 != one && $0 != two && $0 != three }.flatMap { $0 }
    print("\(result[0]) \(result[1])")
}

solution()