//
//  Questions.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

import Foundation
import SwiftUI

let quiz1 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo1 du vollidiot, was ist die richtige Antwort für 1+1?", correctAnswer: "2", allAnswers: ["2", "3", "7"], answered: false)
let quiz2 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo2?", correctAnswer: "richtig", allAnswers: ["richig", "falsch", "wrong"], answered: false)
let quiz3 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Dumm?", correctAnswer: "ja", allAnswers: ["ja","nein", "wrong"], answered: false)
let quiz4 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo4?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false)
let quiz5 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo5?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false)
let quiz6 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo6?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false)
let quiz7 = Quiz(id: UUID.init(), type: "gap text" , topic: "Schule", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false)
let quiz8 = Quiz(id: UUID.init(), type: "gap text" , topic: "Schule", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false)
let quiz9 = Quiz(id: UUID.init(), type: "gap text" , topic: "Schule", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false)
let quiz10 = Quiz(id: UUID.init(), type: "gap text" , topic: "Schule", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false)
let quiz11 = Quiz(id: UUID.init(), type: "gap text" , topic: "Alltag", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false)
let quiz12 = Quiz(id: UUID.init(), type: "gap text" , topic: "Alltag", question: "hallo2?", correctAnswer: "hallo", allAnswers: ["hallo", "wrong", "wrong"], answered: false)


var quizze : [Quiz] = [quiz1, quiz2, quiz3, quiz4, quiz5, quiz6, quiz7, quiz8, quiz9, quiz10, quiz11, quiz12]

var UniQuizze : [Quiz] = addQuizze("Uni")
var SchuleQuizze : [Quiz] = addQuizze("Schule")
var AlltagQuizze : [Quiz] = addQuizze("Alltag")

func addQuizze(_ givenTopic : String) -> [Quiz] {
    var solution : [Quiz] = []
    for element in quizze {
        if (element.topic == givenTopic){
            solution.append(element)
        }
    }
    return solution
}



