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
    var givenQuiz : [Quiz]
    @EnvironmentObject var players: Players
    @EnvironmentObject var questions : Questions
    
    
    var body: some View {
        ScrollView{
            VStack(spacing: 15){
                ForEach(givenQuiz, id: \.self.id) { quiz in   // foreach-Schleife zum durchsuchen des Array givenQuiz, der mit Quizzen beladen ist. Für jedes Quiz in givenquiz wird ein Button erstellt, den die question des Quizzes als Text übergeben bekommt
                    NavigationLink(destination: QuizView(givenQuiz: quiz)){ //NavigationLink der beim Klicken des Buttons zur QuizView führt
                        Text(quiz.question)
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .padding()
                            .padding(.horizontal)
                            .background(Color("ButtonColor"))
                            .cornerRadius(20)
                            .shadow(radius:10)
                            .padding(.top)
                        
                        
                       if(quiz.answered == true){
                         Image(systemName: "checkmark.circle.fill")
                        }
                        
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .environmentObject(players)
            .environmentObject(questions)
            
        }
        .padding(.top)
    }
}
 
struct QuizButton_Previews: PreviewProvider {
  static var previews: some View {
      QuizButton(givenQuiz: Questions().AlltagQuizze)
          .environmentObject(Players())
          .environmentObject(Questions())
}
}

