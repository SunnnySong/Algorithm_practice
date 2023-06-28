import Foundation

enum RSP: Character {
    case scissors = "2"
    case rock = "0"
    case paper = "5"
    
    var win: RSP {
        switch self {
        case .scissors:
            return .rock
        case .rock:
            return .paper
        case .paper:
            return .scissors
        }
    }
}

func solution(_ rsp:String) -> String {
    
    let input = Array(rsp)
    let result = input.map { String(RSP(rawValue: $0)!.win.rawValue) }
    return result.joined()
}