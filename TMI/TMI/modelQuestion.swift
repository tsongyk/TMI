//
//  modelQuestion.swift
//  TMI
//
//  Created by Tommy Song on 7/6/24.
//

import Foundation

class modelQuestion {
    var questions : [String] = []
    
    func generateQuestion(color: String) -> String {
        if color == "blue" {
            self.questions = blueQuestions
        }
        if color == "pink" {
            self.questions = pinkQuestions
        }
        let question : String
        if self.questions.count > 0 {
            // random key from array
            let arrayKey = Int(arc4random_uniform(UInt32(self.questions.count)))

            // your random number
            question = self.questions[arrayKey]

            // make sure the number isnt repeated
            self.questions.swapAt(arrayKey, self.questions.count - 1)
            self.questions.removeLast()
            return question
        }
        return "No more questions available."
    }
}
