//
//  Questions.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

// In diesem File werden die hard gecodeden Quizze angelegt. Alle Quizze werden in einem Array namens quizze gespeichert.

import Foundation
import SwiftUI

let quiz1 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Wie wird 'Studenten' richtig gegendert?", correctAnswer: "Studierende", allAnswers: ["Studierende", "ist richtig so", "Studentinnen"], answered: true, furtherInformation: "hello")

let quiz2 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Wie können alle Geschlechtsidentitäten angesprochen werden sollen?", correctAnswer: "Student*innen", allAnswers: ["Student*innen", "StudentIinnen", "Studenten und Studentinnen"], answered: true, furtherInformation: "Der Stern wird in den letzten Jahren zunehmend verwendet, da das Geschlecht nicht mehr nur als binäres System verstanden wird. Diese Lösung steht allerding nicht im Einklang mit der amtlichen Orthographie.")

let quiz3 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Wie kann man Mitarbeiter richtig gendern, um alle Geschlechtsidentitäten anzusprechen", correctAnswer: "Mitarbieter_innen", allAnswers: ["Mitarbieter_innen","Mitarbeiter und Mitarbeiterinnen", "MitarbeiterInnen"], answered: false, furtherInformation: "Ähnlich wie das * hat der Unterstrich die Intention, alle existierenden Geschlechter anzusprechen")

let quiz4 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo4?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false, furtherInformation: "")
let quiz5 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo5?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false, furtherInformation: "")
let quiz6 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo6?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false, furtherInformation: "")
let quiz7 = Quiz(id: UUID.init(), type: "gap text" , topic: "Schule", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false, furtherInformation: "")
let quiz8 = Quiz(id: UUID.init(), type: "gap text" , topic: "Schule", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false, furtherInformation: "")
let quiz9 = Quiz(id: UUID.init(), type: "gap text" , topic: "Schule", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false, furtherInformation: "")
let quiz10 = Quiz(id: UUID.init(), type: "gap text" , topic: "Schule", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false, furtherInformation: "")
let quiz11 = Quiz(id: UUID.init(), type: "gap text" , topic: "Alltag", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false, furtherInformation: "")
let quiz12 = Quiz(id: UUID.init(), type: "gap text" , topic: "Alltag", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false, furtherInformation: "")
let quiz13 = Quiz(id: UUID.init(), type: "gap text", topic: "Uni", question: "Wer bist du?" , correctAnswer: "ich", allAnswers: ["ich", "du", "er"], answered: false, furtherInformation: "weil")


var quizze : [Quiz] = [quiz1, quiz2, quiz3, quiz4, quiz5, quiz6, quiz7, quiz8, quiz9, quiz10, quiz11, quiz12, quiz13]

var UniQuizze : [Quiz] = addQuizze("Uni")  //Array mit allen Quizzen der Kategorie Uni
var SchuleQuizze : [Quiz] = addQuizze("Schule") //Array mit allen Quizzen der Kategorie Schule
var AlltagQuizze : [Quiz] = addQuizze("Alltag") //Array mit allen Quizzen der Kategorie Alltag

func addQuizze(_ givenTopic : String) -> [Quiz] { //Diese Funktion sortiert die Quizze im Array quizze in den passenden Array mit dem entprechend angegebenen Topic ein
    var solution : [Quiz] = []
    for element in quizze {
        if (element.topic == givenTopic){
            solution.append(element)
        }
    }
    return solution
}

func setQuizAnswered(_ givenquiz : Quiz) -> Void {
    if let Offset = quizze.firstIndex(where: {$0.question == givenquiz.question}) {
        // do something with fooOffset
        quizze[Offset].answered = true
    }
    
}






