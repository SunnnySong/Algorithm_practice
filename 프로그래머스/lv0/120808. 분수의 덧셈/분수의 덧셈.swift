import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    
    var result = [Int]()
    
    // 분모 구하기
    var denom = 최소공배수(denom1, denom2)
    // 분자 구하기
    var numer = (denom / denom1 * numer1) + (denom / denom2 * numer2)
    
    let number = 최대공약수(denom, numer)
    
    if number != 1 {
        denom = denom / number
        numer = numer / number
    }
    
    result.append(numer)
    result.append(denom)
    
    return result
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