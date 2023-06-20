# [Bronze III] 최소, 최대 - 10818 

[문제 링크](https://www.acmicpc.net/problem/10818) 

### 성능 요약

메모리: 133696 KB, 시간: 444 ms

### 분류

구현, 수학

### 문제 설명

<p>N개의 정수가 주어진다. 이때, 최솟값과 최댓값을 구하는 프로그램을 작성하시오.</p>

### 입력 

 <p>첫째 줄에 정수의 개수 N (1 ≤ N ≤ 1,000,000)이 주어진다. 둘째 줄에는 N개의 정수를 공백으로 구분해서 주어진다. 모든 정수는 -1,000,000보다 크거나 같고, 1,000,000보다 작거나 같은 정수이다.</p>

### 출력 

 <p>첫째 줄에 주어진 정수 N개의 최솟값과 최댓값을 공백으로 구분해 출력한다.</p>


### 추가 답안
```swift
func solution10818() {
    
    let count = Int(readLine()!)!
    let numbers: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    print(numbers.min()!, numbers.max()!)
}

func solution10818_2() {
    
    let count = Int(readLine()!)!
    let numbers = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }
    
    print("\(numbers.min()!) \(numbers.max()!)")
}

func solution10818_3() {
    
    let count = Int(readLine()!)!
    let numbers = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }.sorted()
    
    print("\(numbers.first!) \(numbers.last!)")
}
```
- 첫번째 풀이 방법은 통과했지만, 나머지 방법은 시간 초과로 통과하지 못했다.
- 경과 시간을 돌려보니 돌릴 때마다 달라지는데...?
- 여튼 세 가지 모두 시간 차이가 크지 않았다. 그런데 왜 첫 번째 꺼만 통과되는지 모르겠다.
