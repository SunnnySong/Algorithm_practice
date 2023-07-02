import Foundation

func solution() {
    var input = readLine()!.split(separator: " ").map { Double($0)! }
    let day = input[0], night = input[1], height = input[2]
    
    let a = (height - day) / (day - night)
    print(Int(ceil(a) + 1))
}

solution()