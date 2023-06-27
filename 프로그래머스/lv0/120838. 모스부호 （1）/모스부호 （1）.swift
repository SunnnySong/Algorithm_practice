import Foundation

func solution(_ letter:String) -> String {
    
    let morse = [
        ".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f",
        "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",
        "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
        "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
        "-.--":"y","--..":"z"
    ]
    let input = letter.components(separatedBy: " ")
    
    let result = input.map { morseLetter in
        morse[morseLetter]!
    }
    return result.joined()
}