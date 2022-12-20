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
    @EnvironmentObject var players : Players
    var givenQuiz : Quiz
    
    @State private var isSelected = false
    
    var green = Color("CorrectAnswer")
    var red = Color ("WrongAnswer")
    
    var body: some View {
        VStack{
            
            AllAnswers(answer: Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: givenQuiz.question, correctAnswer: givenQuiz.correctAnswer, allAnswers: givenQuiz.allAnswers.shuffled(), answered: false, furtherInformation: ""))
            
            NavigationLink {
                InfoView(givenQuiz: givenQuiz)
            }label: {
                InfoButton()
                    .padding(.top)
            }
            
        }
        .environmentObject(players)

    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(givenQuiz: quiz1).environmentObject(Players())
    }
}

