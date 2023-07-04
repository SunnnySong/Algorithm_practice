func solution() {
    
    while let input = readLine(), input != "0 0" {
        
        let numbers = input.split(separator: " ").map { Int($0)! }
        
        if numbers[0] < numbers[1] {
            print(check(numbers[1], numbers[0]) == true ? "factor" : "neither")
        } else {
            print(check(numbers[0], numbers[1]) == true ? "multiple" : "neither")
        }
        
    }
}

func check(_ num1: Int, _ num2: Int) -> Bool {
    return num1 % num2 == 0 ? true : false
}

solution()