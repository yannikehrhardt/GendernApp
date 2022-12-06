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
    var allAnswers: [String]
    var answered : Bool
    
    
    
    init(id: UUID, type: String, topic: String, question: String, correctAnswer: String, allAnswers: [String], answered: Bool) {
        self.type = type
        self.topic = topic
        self.answered = answered
        self.question = question
        self.correctAnswer = correctAnswer
        self.allAnswers = allAnswers
        
    }
}
    