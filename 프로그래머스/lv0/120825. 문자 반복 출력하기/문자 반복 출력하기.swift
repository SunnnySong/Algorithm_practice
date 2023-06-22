import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    
    let result = Array(my_string).map { String(repeating: $0, count: n)}
    return result.joined()
}