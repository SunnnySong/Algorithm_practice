import Foundation

func solution(_ array:[Int]) -> Int {
    
    let sortedArray = array.sorted()
    let index = sortedArray.count / 2
    
    return sortedArray[index]
}