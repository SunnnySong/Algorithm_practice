let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var visited = [Bool](repeating: false, count: n + 1)

func dfs(array: [Int]) {
    for i in 1...n {
        if array.count == m {
            print(array.map { String($0) }.joined(separator: " "))
            break
        }

        if !visited[i] && (array.max() ?? 0) < i {
            visited[i] = true
            dfs(array: array + [i])
            visited[i] = false
        }
    }
}

dfs(array: [])