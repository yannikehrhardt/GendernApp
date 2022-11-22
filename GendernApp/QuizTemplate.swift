//
//  QuizTemplate.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 02.11.22.
//struct for creating quizes that will be loaded on the different level depending on their topic and their difficulty

import Foundation

struct Quiz {
    //if you create structs all the variables muss be inilized via init{}
    //have a look on https://docs.swift.org/swift-book/LanguageGuide/Initialization.html
    
    //type: Art der Frage als bspw. quiz-Frage, Lückentext usw. je nachdem was wir unterstützen wollen / können
    //idealerweise soll der Spieler später aus einem Drop-Down Menü wählen, wenn er eine neue Frage einreichen möchte
    let type : String
    let topic : String
    
    // wir könnten statt nach Schwierigkeitsgrad zu unterschieden (siehe Figma) auch einfach alle in eine Liste hinzufügen, die zum Thema passen
   // let difficulty : Int
    
    let question : String
    let correctAnswer : String
    let answered : Bool
    //wir brauchen einen Handler, der nil in die falschen Antworten einfügt, wenn bspw. ein Lückentext oder eine offene Frage gestellt wird, sosnt wird ggf ein Fehler geworfen -> Error Handling
    //let wrongAnswer1 : String
    //let wrongAnswer2: String
    //let wrongAnswer3: String
    
    //besagter init
    

    init(type: String, topic: String, answered: Bool, question: String, correctAnswer: String) {
        self.type = type
        self.topic = topic
        //self.difficulty = difficulty
        self.answered = answered
        self.question = question
        self.correctAnswer = correctAnswer
        //self.wrongAnswer1 = wrongAnswer1
        //self.wrongAnswer2 = wrongAnswer2
        //self.wrongAnswer3 = wrongAnswer3
    }
    
    //wenn ein neues Struct einer Quizfrage erstellt wird (Z.B. var x = Quiz(<Parameter)), kann eine Variable mit bspw. x.topic ausgelesen werden
    //ggf. brauchen wir aber set-Methoden, wenn wir leergelassene Antworten mit einem Lückenfüller oder nil füllen wollen, damit es nicht zum Fehler kommt.
}
