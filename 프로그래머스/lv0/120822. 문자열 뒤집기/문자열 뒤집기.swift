import Foundation

func solution(_ my_string:String) -> String {
    
    let result = my_string.reduce(into: "") { pre, next in
        pre = String(next) + pre
    }
    return result
}
