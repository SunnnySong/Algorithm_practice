func solution() {
    let x = Int(readLine()!)! > 0 ? true : false
    let y = Int(readLine()!)! > 0 ? true : false
    
    var result: Int {
        switch (x, y) {
        case (true, true):
            return 1
        case (true, false):
            return 4
        case (false, true):
            return 2
        case (false, false):
            return 3
        }
    }
    print(result)
}

solution()