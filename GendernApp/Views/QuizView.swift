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
        
        //funktioniert iwie nicht
        //mögliche Ursachen: setQuizAnswered geht nicht, View refresht nicht, wenn man den Back-Button betätigt o. Aufruf an dieser Stelle ist nicht korrekt
        self.setQuizAnswered(givenQuiz)
    }
    
    func setQuizAnswered(_ givenquiz : Quiz) -> Void {
        if let Offset = quizze.firstIndex(where: {$0.id == givenquiz.id}) {
            //Offset gibt die Stelle im Array an, für die die beiden IDs übereinstimmen
            quizze[Offset].answered = true
        }
        
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
                
                AnswerRow(givenQuiz: givenQuiz)
                
                
                CurrentScore(text: "")
                    .padding(.top, 50.0)
                
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

//TextField(
  //  "Please type your answer...",
  //  text: quiz1.$correctAnswer) //aus quiz1
//.padding(.leading, 40.0)
//.frame(width: 300.0, height: 30.0)
//.background(Color.white)
//.shadow(radius: 10)
// .cornerRadius(20)