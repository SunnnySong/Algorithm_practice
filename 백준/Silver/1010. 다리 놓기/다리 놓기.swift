func solution() {
    let t = Int(readLine()!)!

    for _ in 1...t {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let n = input[1], k = input[0]

        let result = cacheBinomialCoefficient(n: n, k: k)
        print(result)
    }
}


func cacheBinomialCoefficient(n: Int, k: Int)  -> Int {
    // (n + 1) * (k + 1) matrix 생성
    var cache = Array(repeating: Array(repeating: 0, count: k + 1), count: n + 1)

    // cache matrix 초기 설정
    for i in 0...n {
        // k == 0 일 때 1 반환
        cache[i][0] = 1
    }

    for h in 0...k {
        // n == k 일 경우 1 반환
        // 항상 n > k (k+1) for문에서 해당 설정을 해줘야 한다.
        cache[h][h] = 1
    }

    // 파스칼의 삼각형 동일하게 적용
    for i in 1...n {
        for h in 1...k {
            cache[i][h] = cache[i-1][h] + cache[i-1][h-1]
        }
    }

    return cache[n][k]
}

solution()