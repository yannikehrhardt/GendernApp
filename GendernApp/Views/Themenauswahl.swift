//
//  Themenauswahl.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

import SwiftUI

struct Themenauswahl: View {
    @EnvironmentObject var players: Players
    @EnvironmentObject var questions : Questions
    @EnvironmentObject var rules: Rules
    
    var givenUsername : String
    
    
    var body: some View {
        HStack {
            VStack(spacing: 20) {
                Text("Please select a topic")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextColor"))
                    .padding(.bottom)
                    .padding(.top, 50)
                 
                
                NavigationLink{
                    Quizauswahl_Universitat()
                }label: {
                    UniversityButton()
                }
                
                
                NavigationLink{
                    Quizauswahl_Schule()
                }label: {
                    SchuleButton()
                }
                
                
                NavigationLink{
                    Quizauswahl_Alltag()
                }label: {
                    AlltagButton()
                }
                
                
                NavigationLink{
                    ScoreView(currentplayer: players.currentplayer, givenplayers: players.players, playerscore: players.currentplayer.currentscore)
                } label: {
                    ScoreViewButton()
                }
                .padding(.top, 50)
                
                
                NavigationLink{
                    AddQuestionsView()
                }label: { AddQuizButton()
                }
                .padding(.top)
                
                
                
                CurrentScore()
                    .padding(.top, 10)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
        }
        
        //wenn der Screen aufgerufen wird, wird der aktuelle Spieler gesetzt
        .onAppear(){
            self.players.setCurrentPlayer(self.players.usernameOffset(self.givenUsername))
        }
        .environmentObject(players)
        .environmentObject(questions)
        .environmentObject(rules)
    }
}

struct Themenauswahl_Previews: PreviewProvider {
    static var previews: some View {
        Themenauswahl(givenUsername: "Yannik")
            .environmentObject(Players())
            .environmentObject(Questions())
            .environmentObject(Rules())
    }
}

// Darstellung der Buttons verändern --> größer machen
