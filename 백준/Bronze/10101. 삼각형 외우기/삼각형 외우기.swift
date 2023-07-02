func solution() {
    
    let input1 = Int(readLine()!)!
    let input2 = Int(readLine()!)!
    let input3 = Int(readLine()!)!
    
    if input1 + input2 + input3 != 180 {
        print("Error")
    } else if input1 == input2 && input2 == input3 {
        print("Equilateral")
    } else {
        print(input1 == input2 || input2 == input3 || input1 == input3 ? "Isosceles" : "Scalene")
    }
}

solution()