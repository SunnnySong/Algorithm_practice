// ver 1.
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

// ver2.
func solution() {
    
    var x = 0, y = 0
    for _ in 0..<3 {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        x ^= input[0]
        y ^= input[1]
        print(x, y)
    }
}

- XOR 연산은 두 개의 비트가 다를 때 결과가 1이 되고, 같을 때 결과가 0이 된다.
- XOR 연산은 여러 개의 비트를 XOR 연산할 때, 짝이 없는 유일한 비트를 찾는 데에 유용하다.
- ex)(1, 1), (1, 3), (3, 1) 세 개의 좌표가 주어진 경우, 
    - x값들의 XOR 연산: 1 XOR 1 XOR 3 = 3
    - y값들의 XOR 연산: 1 XOR 3 XOR 1 = 3
