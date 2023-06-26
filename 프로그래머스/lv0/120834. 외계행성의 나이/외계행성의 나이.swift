import Foundation

func solution(_ age: Int) -> String {
    
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    let splitAge = Array(String(age))
    var result = ""

    splitAge.forEach { value in
        result += alphabet[Int(String(value))!]
    }
    return result
}