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
    @EnvironmentObject var questions : Questions
    
    var givenQuiz : Quiz

    
    @State private var isSelected = false
    
    var green = Color("CorrectAnswer")
    var red = Color ("WrongAnswer")
    
    var body: some View {
        VStack{
            
            AllAnswers(answer: givenQuiz)
                        
        }
        .environmentObject(players)
        .environmentObject(questions)
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(givenQuiz: Questions().quiz1)
            .environmentObject(Players())
            .environmentObject(Questions())
    }
}

