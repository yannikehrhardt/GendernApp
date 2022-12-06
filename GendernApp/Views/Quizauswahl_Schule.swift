//
//  Quizauswahl_Schule.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import SwiftUI

struct Quizauswahl_Schule: View {
    var body: some View {
        VStack(spacing: 20){
            
            Text("Pick a Quiz :)")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
            
            QuizButton(givenQuiz: SchuleQuizze)
            
            
            CurrentScore(text: "")
                .padding(.top, 50.0)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
    }
}

struct Quizauswahl_Schule_Previews: PreviewProvider {
    static var previews: some View {
        Quizauswahl_Schule()
    }
}
