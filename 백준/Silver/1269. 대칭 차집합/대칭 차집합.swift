func solution() {
    var a = Set<Int>()
    var b = Set<Int>()

    let _ = readLine()!
    readLine()!.split(separator: " ").forEach {
        let number = Int($0)!
        a.insert(number)
    }
    readLine()!.split(separator: " ").forEach {
        let number = Int($0)!

        if let index = a.firstIndex(of: number){
            a.remove(at: index)
        } else {
            b.insert(number)
        }
    }

    print(a.count + b.count)
}

solution()