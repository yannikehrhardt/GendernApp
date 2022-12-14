//
//  AnswerRow.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

// in dieser SwiftUiView wird die Darstellung der Antwortmöglichkeiten implementiert

import SwiftUI

import SwiftUI

struct AnswerRow: View {
    var givenQuiz : Quiz
    init(givenQuiz: Quiz) {
        self.givenQuiz = givenQuiz
                
    }
    
    @State private var isSelected = false
    
    var green = Color("CorrectAnswer")
    var red = Color ("WrongAnswer")
    
    var body: some View {
        VStack{
            
            AllAnswers(answer: Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: givenQuiz.question, correctAnswer: givenQuiz.correctAnswer, allAnswers: givenQuiz.allAnswers.shuffled(), answered: false, furtherInformation: ""), players: Players())
            
            NavigationLink {
                InfoView(givenQuiz: givenQuiz)
            }label: {
                InfoButton(text: "")
                    .padding(.top)
            }
            
        }
        
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(givenQuiz: quiz1)
    }
}

