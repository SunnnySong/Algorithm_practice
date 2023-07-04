func solution() {
    
    while let input = Int(readLine()!), input != -1 {
        
        let array = findFactor(input)
        if array.reduce(0, +) == input {
            let string = array.reduce(into: "\(input) = ") { pre, next in
                
                if array.firstIndex(of: next) == (array.count - 1) {
                    pre += "\(next)"
                } else {
                    pre += "\(next) + "                    
                }
            }
            print(string)
        } else {
            print("\(input) is NOT perfect.")
        }
    }
}

func findFactor(_ num: Int) -> [Int] {
    
    var result = [Int]()
    for i in 1...num/2 {
        if num % i == 0 {
            result.append(i)
        }
    }
    return result
}

solution()