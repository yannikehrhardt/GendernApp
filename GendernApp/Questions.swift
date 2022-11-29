//
//  Questions.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

import Foundation
import SwiftUI

let quiz1 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo1?", correctAnswer: "hallo", incorrectAnswers: ["wrong", "wrong"], answered: false)
let quiz2 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo2?", correctAnswer: "hallo", incorrectAnswers: ["wrong", "wrong"], answered: false)

var quizze : [Quiz] = [quiz1, quiz2]
