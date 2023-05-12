import Foundation

func solution(_ myString:String) -> String {
    
    // ver1. 
//     var sample = Set<String.Element>()
    
//     let result: String = myString.reduce("") { preValue, nextValue in
    
//         guard sample.contains(nextValue) == false else {
//             return "\(preValue)"
//         }
//         sample.insert(nextValue)
    
//         return "\(preValue)" + "\(nextValue)"
//     }
    
//     return result
    
    var result = ""

    for char in myString {
        if !result.contains(char) {
            result.append(char)
        }
    }

    return result
}

