//
//  ScoreComparison.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 07.12.22.
//
//UI View für die die ScoreComparison je Spieler darstellt

import SwiftUI

struct ScoreComparison: View {
    @State var givenPlayers : [PlayerTemplate]
    @State var currentplayer : PlayerTemplate
    
    var body: some View {
        //Für jeden Spieler in einem Array an Spielenden wird eine View erstellt, die den Spielendennamen, den Score des Spielenden und die Anzahl der Errungenschaften umfasst
        ForEach(givenPlayers, id: \.self.id) { player in
            VStack(spacing: 20){
            
                //Der Nutzername des aktuell Spielenden wird großer Schrift hervorgehoben
                if(self.currentplayer.username == player.username){
                    /*@START_MENU_TOKEN@*/Text(player.username)/*@END_MENU_TOKEN@*/
                        .font(.largeTitle)
                }
                
                //fremder Nutzer werden normal dargestellt
                else if(currentplayer.username != player.username){
                    Text(player.username)
                }
                
                //angezeigter Score und Errungenschaften
                HStack(spacing:10){
                    Text("Current Score: \(player.currentscore)")
                        .font(.system(size: 16, weight: .light, design: .default))
                    Text("Errungenschaften: \(player.badges)")
                        .font(.system(size: 16, weight: .light, design: .default))
                }
                
            }
            
        }
        
    }
}


struct ScoreComparison_Previews: PreviewProvider {
   static var previews: some View {
       ScoreComparison(givenPlayers: Players().players, currentplayer: Players().currentplayer)
    }
}
