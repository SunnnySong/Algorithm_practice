func solution() {
    var dictionary = [Int: Int]()

    let _ = Int(readLine()!)!
    readLine()!.split(separator: " ").forEach {
        dictionary[Int($0)!, default: 0] += 1
    }


    let _ = Int(readLine()!)!
    readLine()!.split(separator: " ").forEach {
        print(dictionary[Int($0)!, default: 0])
    }
}

solution()