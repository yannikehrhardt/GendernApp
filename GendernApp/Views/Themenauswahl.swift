//
//  Themenauswahl.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

import SwiftUI

struct Themenauswahl: View {
    @EnvironmentObject var players: Players
    
    var body: some View {
        HStack {
            VStack(spacing: 20) {
                Text("Please select a topic")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextColor"))
                    .padding(.bottom, 50.0)
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
                .padding(.top, 150)
                
                
                
                CurrentScore()
                    .padding(.top, 10)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
         //   .navigationBarBackButtonHidden(true)
        }
        .environmentObject(players)
    }
}

struct Themenauswahl_Previews: PreviewProvider {
    static var previews: some View {
        Themenauswahl()
    }
}
