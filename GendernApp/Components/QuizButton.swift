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
                    VStack(spacing: 20){
                        NavigationLink(destination: QuizView(givenQuiz: quiz)){ //NavigationLink der beim Klicken des Buttons zur QuizView führt
                            Text(quiz.question)
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                                .padding()
                                .padding(.horizontal)
                            
                            //wenn die Frage vom Spielenden bereits korrekt beantwortet wurde (dann ist die ID des Quizzes teil des Arrays aswered (in Players)), dann wird ein Haken hinter der Frage gesetzt
                            if(players.players[players.usernameOffset(players.currentplayer.username)].answered.contains(quiz.id)){
                                
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                            }
                            
                        }
                    }
                    .frame(width:350, height: 150)
                    .background(Color("ButtonColor"))
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    
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

