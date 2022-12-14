//
//  Quizauswahl_Alltag.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import SwiftUI

struct Quizauswahl_Alltag: View {
    @ObservedObject var players: Players
    var body: some View {
        VStack(spacing: 20){
            
            Text("Pick a Quiz :O")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.top, 50)
            
            QuizButton(givenQuiz: AlltagQuizze, players: players)
            
            CurrentScore(players: players, text: "")
                .padding(.bottom)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
    }
}

struct Quizauswahl_Alltag_Previews: PreviewProvider {
    static var previews: some View {
        Quizauswahl_Alltag(players: Players())
    }
}
