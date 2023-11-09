import Foundation

let n = Int(readLine()!)!
print(pow(2, n) - 1)
hanoi(n, start: 1, mid: 2, end: 3)


func hanoi(_ n: Int, start: Int, mid: Int, end: Int) {
    if n == 1 {
        print("\(start) \(end)")
        return
    }

    hanoi(n-1, start: start, mid: end, end: mid)
    hanoi(1, start: start, mid: mid, end: end)
    hanoi(n-1, start: mid, mid: start, end: end)
}