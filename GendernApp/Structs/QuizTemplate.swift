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
    //dieses Array hat eine Länge von der Anzahl der Antwortmöglichkeiten (3). Wenn nur eine Antwort korrekt ist, sieht das Array so aus: ["richtigeAntwort","",""]
    var correctAnswer : [String]
    var allAnswers: [String]
    var correctlySelectedAnswers : Int
    //Nutzername des Nutzenden, der die Frage hinzugefügt hat
    var createdBy : String
    
    //Erklärung, wieso die Antwort einer Frage korrekt ist -> wird im Info-Screen ausgelesen
    var furtherInformation : String
    
 
    
    
    
    init(type: String, topic: String, question: String, correctAnswer: [String], allAnswers: [String], furtherInformation : String, createdBy : String) {
        self.id = UUID.init()
        self.type = type
        self.topic = topic
        self.question = question
        self.correctAnswer = correctAnswer
        self.allAnswers = allAnswers.shuffled()
        self.furtherInformation = furtherInformation
        self.correctlySelectedAnswers = 0
        self.createdBy = createdBy
    }
}
    
