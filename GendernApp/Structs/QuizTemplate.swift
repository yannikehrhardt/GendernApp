//
//  QuizTemplate.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 02.11.22.
//struct for creating quizes that will be loaded on the different level depending on their topic and their difficulty

import Foundation
import SwiftUI

struct Quiz {
    
    var id: UUID{
        UUID()
    }
    var type : String
    var topic : String
    var question : String
    var correctAnswer : String
    var incorrectAnswers: [String]
    var answered : Bool

    

    init(id: UUID, type: String, topic: String, question: String, correctAnswer: String, incorrectAnswers: [String], answered: Bool) {
        self.type = type
        self.topic = topic
        self.answered = answered
        self.question = question
        self.correctAnswer = correctAnswer
        self.incorrectAnswers = incorrectAnswers

    }
    
    var answers: [Answer] {
        do {
            let correct = [Answer(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
            let incorrects = try incorrectAnswers.map {answer in Answer(text: try AttributedString(markdown: answer), isCorrect: false)
            }
            let allAnswers = correct + incorrects
            
            return allAnswers.shuffled()
        }
        catch {
            print("Error setting answers: \(error)")
            return []
        }
    }
    
}
