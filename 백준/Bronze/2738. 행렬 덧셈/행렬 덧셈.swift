import Foundation

func solution() {
    let count = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let n = count[0], m = count[1]
    
    var a = [[Int]]()
    
    for _ in 0..<n*2 {
        let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
        a.append(input)
    }
    
    for i in 0..<n {
        var account = [String]()

        for h in 0..<m {
            account.append("\(a[i][h] + a[i+n][h])")
        }
        print(account.joined(separator: " "))
    }
}

solution()