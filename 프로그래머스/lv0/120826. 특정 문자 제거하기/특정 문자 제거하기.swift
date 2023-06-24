import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
      let result = my_string.reduce(into: "") { pre, next in
        let nextString = String(next)
        if nextString != letter {
            pre += nextString
        }
    }
    return result
}