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
    
    //gibt an, welcher Spieler die Frage schon beantwortet hat. Wenn ein Spieler die Frage beantwortet hat, so wird die UUID des Spielers zum Array hinzugefügt
    var answered : Bool
    
    //Erklärung, wieso die Antwort einer Frage korrekt ist -> wird im Info-Screen ausgelesen
    var furtherInformation : String
    
 
    
    
    
    init(id: UUID, type: String, topic: String, question: String, correctAnswer: String, allAnswers: [String], answered: Bool, furtherInformation : String) {
        self.type = type
        self.topic = topic
        self.question = question
        self.correctAnswer = correctAnswer
        self.allAnswers = allAnswers.shuffled()
        self.answered = answered
        self.furtherInformation = furtherInformation
    }
}
    
