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
    
    //Variable, die angibt, ob der Spieler die Errungenschaften oder das Leaderboard sehen möchte
    @State var showBadges = 0
    
    var body: some View {
        VStack(spacing: 20){
            VStack {
                //Der Picker erlaubt dem Spieler zwischen den Errungenschaften und dem Leaderboard zu wechseln. Dafür wird die Variable showBadges referenziert
                Picker("Welchen spielerspezifischen Infos möchtest du sehen?", selection: $showBadges) {
                    Text("Errungenschaften").tag(0)
                    Text("Leaderboard").tag(1)
                }
                .pickerStyle(.segmented)
            }
            
            //für showBadges = 1 werden das Leaderboard angezeigt
            if(showBadges == 1){
                Text("Du liegst auf Position \(players.returnOffsetInArray(givenPlayerArray: players.players.sorted{$0.currentscore > $1.currentscore}, givenPlayer: players.currentplayer) + 1)")
                List {
                    ScoreComparison(givenPlayers: players.players.sorted{
                        $0.currentscore > $1.currentscore
                    }, currentplayer: players.currentplayer)
                    
                    //andere Farbe wäre noch gut
                        .listRowBackground(Color.white)
                }
            }
            
            //für showBadges = 0 werden die Errungenschaften angezeigt
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
