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
    @State var players : Players
    var givenQuiz : Quiz
    init(players: Players, givenQuiz: Quiz) {
        self.players = players
        self.givenQuiz = givenQuiz
    }
    
    @State private var isSelected = false
    
    var green = Color("CorrectAnswer")
    var red = Color ("WrongAnswer")
    
    var body: some View {
        VStack{
            
            AllAnswers(answer: Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: givenQuiz.question, correctAnswer: givenQuiz.correctAnswer, allAnswers: givenQuiz.allAnswers.shuffled(), answered: false, furtherInformation: ""), players: players)
            
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
        AnswerRow(players: Players(), givenQuiz: quiz1)
    }
}

