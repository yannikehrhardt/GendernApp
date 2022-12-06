//
//  QuizButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 29.11.22.
//

// in dieser SwiftUIView werden Quiz-Button implementiert, die einen auf die QuizView navigieren, in der dann die jeweils richtige Frage und die passenden Antwortmöglichkeiten angezeigt werden
// der QuizButton wird im der SwiftFile Quizauswahl_... aufgerufen

import SwiftUI

struct QuizButton: View {
    var givenQuiz : [Quiz] = []
    init(givenQuiz: [Quiz]) {
        self.givenQuiz = givenQuiz
    }
    var body: some View {
        ScrollView{
            VStack(spacing: 15){
                ForEach(givenQuiz, id: \.self.id) { quiz in   // for-Schleife zum durchsuchen des Array given Quiz, der mit Quizzen beladen ist
                    NavigationLink(destination: QuizView(givenQuiz: quiz)){ // der NavigationLink der beim Klicken des Buttons zur QuizView führt
                        Text(quiz.question)
                            .foregroundColor(Color.white)
                            .padding()
                            .padding(.horizontal)
                            .background(Color("ButtonColor"))
                            .cornerRadius(20)
                            .shadow(radius:10)
                        
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding(.top)
    }
 //   struct QuizButton_Previews: PreviewProvider {
 //      static var previews: some View {
//            QuizButton(givenQuiz: givenQuiz)
//       }
//    }
}
