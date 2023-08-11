func solution() {
    let n = Int(readLine()!)!
    var account = 0

    for number in 666...2666799 {
        var count = 0

        for i in number.description {
            if i == "6" {
                count += 1
            } else {
                count = 0
            }

            if count == 3 {
                account += 1

                if account == n {
                    print(number)
                    break
                }
            }
        }
    }
}

solution()