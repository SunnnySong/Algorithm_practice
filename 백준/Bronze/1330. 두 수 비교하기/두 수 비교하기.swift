import Foundation

func solution1330() {
    
    var input = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }
    let a = input[0]
    let b = input[1]
    
    if a == b {
        print("==")
    } else {
        a > b ? print(">") : print("<")
    }
}

solution1330()