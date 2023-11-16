
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var visited = [Bool](repeating: false, count: n + 1)
var result = ""

func dfs(array: [Int]) {
    if array.count == m {
        result += array.map { String($0) }.joined(separator: " ")
        result += "\n"
        return
    }

    for i in 1...n {
        visited[i] = true
        dfs(array: array + [i])
        visited[i] = false
    }
}
dfs(array: [])
print(result)
