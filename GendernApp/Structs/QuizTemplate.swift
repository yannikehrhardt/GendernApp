//
//  QuizTemplate.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 02.11.22.
//struct for creating quizes that will be loaded on the different level depending on their topic and their difficulty

import Foundation
import SwiftUI

struct Quiz {
    
    var id: UUID
    var type : String
    var topic : String
    var question : String
    var correctAnswer : String
    var allAnswers: [String]
    
    //Erklärung, wieso die Antwort einer Frage korrekt ist -> wird im Info-Screen ausgelesen
    var furtherInformation : String
    
 
    
    
    
    init(type: String, topic: String, question: String, correctAnswer: String, allAnswers: [String], furtherInformation : String) {
        self.id = UUID.init()
        self.type = type
        self.topic = topic
        self.question = question
        self.correctAnswer = correctAnswer
        self.allAnswers = allAnswers.shuffled()
        self.furtherInformation = furtherInformation
    }
}
    
