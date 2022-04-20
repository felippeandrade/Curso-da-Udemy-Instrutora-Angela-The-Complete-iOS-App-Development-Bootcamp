import Foundation

var studentsAndScores = ["Amy": Int(readLine()!)!,
                         "James": Int(readLine()!)!,
                         "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {
    
    let a = studentsAndScores["Amy"]!
    let b = studentsAndScores["James"]!
    let c = studentsAndScores["Helen"]!
    
    var temp = 0
    //If a is greater than b
    
    if a > temp {
        //And a is also greater than c
        temp = a
    }
    
    if b > temp {
        temp = b
    }
    
    if c > temp {
        temp = c
    }
    
    print("Maior nota é \(temp)")
    
}

highestScore(scores: studentsAndScores)


