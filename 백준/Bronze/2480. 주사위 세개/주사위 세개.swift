import Foundation

func solution2480() {
    
    let input = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }
    let dice1 = input[0]
    let dice2 = input[1]
    let dice3 = input[2]
    
    if dice1 == dice2 && dice2 == dice3 {
        print(10000 + (dice1 * 1000))
    } else if dice1 != dice2 && dice2 == dice3 {
        print(1000 + (dice2 * 100))
    } else if dice1 == dice2 && dice2 != dice3 {
        print(1000 + (dice2 * 100))
    } else if dice1 == dice3 && dice2 != dice3 {
        print(1000 + (dice1 * 100))
    } else {
        print(max(dice1, dice2, dice3) * 100)
    }
}

solution2480()