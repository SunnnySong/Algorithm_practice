func solution() {
    
    while let input = readLine(), input != "0 0 0" {
        var numbers = input.split(separator: " ").map { Int($0)! }.sorted(by: >)
        if numbers[0] >= numbers[1] + numbers[2] {
            print("Invalid")
        } else if numbers[0] == numbers[2] {
            print("Equilateral")
        } else {
            print(numbers[0] == numbers[1] || numbers[1] == numbers[2] ? "Isosceles" : "Scalene")
        }
    }
}

solution()