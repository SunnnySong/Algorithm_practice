import Foundation

func solution2941() {
        
    let alphabets = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
    var input = readLine()!
    var account = input.count
    
    alphabets.forEach { alphabet in
        
        if input.contains(alphabet) {
            input = input.replacingOccurrences(of: alphabet, with: "a")
        }
    }
    
    print(input.count)
}

solution2941()