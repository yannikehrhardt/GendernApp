//
//  ScoreView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

struct ScoreView: View {
    
    @EnvironmentObject var players : Players
    @EnvironmentObject var questions : Questions
    
    @State var showBadges = 0
    var body: some View {
        VStack(spacing: 20){
            VStack {
                Picker("What is your favorite color?", selection: $showBadges) {
                    Text("Errungenschaften").tag(0)
                    Text("Leaderboard").tag(1)
                }
                .pickerStyle(.segmented)
            }
            if(showBadges == 1){
                List {
                    ScoreComparison(givenPlayers: players.players, currentplayer: players.currentplayer)
                    
                    //andere Farbe wäre noch gut
                        .listRowBackground(Color.white)
                }
            }
            
            else if(showBadges == 0){
                CreateBagdes()
            }
        }
        .environmentObject(players)
        .environmentObject(questions)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .scrollContentBackground(.hidden)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
            .environmentObject(Players())
            .environmentObject(Questions())
        
    }
}
