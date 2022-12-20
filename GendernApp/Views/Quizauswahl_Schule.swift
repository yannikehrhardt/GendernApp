//
//  Quizauswahl_Schule.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import SwiftUI

struct Quizauswahl_Schule: View {
    @EnvironmentObject var players: Players
    var body: some View {
        VStack(spacing: 20){
            
            Text("Pick a Quiz :)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.top, 50)
            
            QuizButton(givenQuiz: SchuleQuizze)
            
            CurrentScore()
                .padding(.bottom)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .environmentObject(players)
    }
}

struct Quizauswahl_Schule_Previews: PreviewProvider {
    static var previews: some View {
        Quizauswahl_Schule().environmentObject(Players())
    }
}
