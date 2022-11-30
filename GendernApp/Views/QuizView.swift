//
//  QuizView.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

import SwiftUI

struct QuizView: View {
    var givenQuiz : Quiz
    init(givenQuiz: Quiz) {
        self.givenQuiz = givenQuiz
    }
    
    var body: some View {
        VStack(spacing:40){
            VStack(spacing:20){
                VStack(spacing:40){
                    
                    Text(givenQuiz.question) // aus Questions quiz1
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 50.0)
                }
                //TextField(
                  //  "Please type your answer...",
                  //  text: quiz1.$correctAnswer) //aus quiz1
                //.padding(.leading, 40.0)
                //.frame(width: 300.0, height: 30.0)
                //.background(Color.white)
                //.shadow(radius: 10)
               // .cornerRadius(20)
                
                AnswerRow(answer: Answer(text: "dummy1", isCorrect: true))
                AnswerRow(answer: Answer(text: "dummy2", isCorrect: false))
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(givenQuiz: quiz1)
    }
}
