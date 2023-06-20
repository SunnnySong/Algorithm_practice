import Foundation

func solution(_ n:Int) -> Int {
    
    return 최소공배수(n, 6) / 6
}

func 최대공약수(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return 최대공약수(b, a % b)
    }
}

func 최소공배수(_ a: Int, _ b: Int) -> Int {
    return a * b / 최대공약수(a, b)
}