import Foundation

func solution(_ array:[Int]) -> Int {
    
    // 최빈값 구하는 문제 - Hash Map 사용
    
    // 1. hashMap 생성
    var hashMap: [Int: Int] = [:]
    
    // 2. 배열 요소를 순회하며 빈도 계산
    for number in array {
        hashMap[number, default: 0] += 1
    }
    
    // 3. 최빈값 찾기
    var maxCount = 0
    var maxNumber = 0
    
    for (key, value) in hashMap {
        if maxCount < value {
            maxCount = value
            maxNumber = key
        } else if maxCount == value {
            maxNumber = -1
        }
    }

    return maxNumber
}