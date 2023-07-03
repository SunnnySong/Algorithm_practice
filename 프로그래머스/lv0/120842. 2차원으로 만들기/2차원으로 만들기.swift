import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result = [[Int]]()
    var content = [Int]()
    
    num_list.forEach { num in
        if content.count < n {
            content.append(num)
        }
        if content.count == n {
            result.append(content)
            content = [Int]()
        }
    }
    
    return result
}