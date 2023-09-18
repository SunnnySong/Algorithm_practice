func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    var array = [[String.Element]]()

    for _ in 1...n {
        array.append(Array(readLine()!))
    }

    var result = 64

    for i in 0...n-8 {
        for h in 0...m-8 {

            var startBCount = 0
            var startWCount = 0

            for x in i...7 + i {
                for y in h...7 + h {

                    if (x + y) % 2 == 0 {
                        if array[x][y] == "B" {
                            startWCount += 1
                        } else {
                            startBCount += 1
                        }
                    } else {
                        if array[x][y] == "B" {
                            startBCount += 1
                        } else {
                            startWCount += 1
                        }
                    }
                }
            }

            result = min(startBCount, startWCount, result)
        }
    }
    print(result)
}

solution()