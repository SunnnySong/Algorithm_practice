func solution5597() {
    
    var array = Array(1...30)
    
    for _ in 1..<29 {
        let input = Int(readLine()!)!
            
        guard let index = array.firstIndex(of: input) else {
            return
        }
        array.remove(at: index)
    }
    print(array[0])
    print(array[1])
}

solution5597()
