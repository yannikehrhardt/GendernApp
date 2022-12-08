//
//  ScoreComparison.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 07.12.22.
//

import SwiftUI

struct ScoreComparison: View {
    var givenPlayers : [PlayerTemplate]
    
    init(givenPlayers: [PlayerTemplate]) {
//        self.givenPlayers = givenPlayers.sorted(using: <#T##SortComparator#>)
        self.givenPlayers = givenPlayers
        
    }
    
    //ideal wäre es, wenn (1) das Array vorher sortiert wird, bspw. nach dem besten Score und (2) der Name des aktuellen Spielers mehr hervorgehoben wird
    //allderings wird von hier keine hintergrundFarbe übergeben und das Design des Texts hat keinen Einfluss
    
    var body: some View {
        
        ForEach(givenPlayers, id: \.self.id) { player in
            VStack(spacing: 20){
            
                
                /*@START_MENU_TOKEN@*/Text(player.username)/*@END_MENU_TOKEN@*/
                    .font(.largeTitle)
                    
                
                HStack(spacing:10){
                    Text("Current Score: \(player.currentscore)")
                        .font(.system(size: 16, weight: .light, design: .default))
                    Text("Average Score: \(player.averagescore)")
                        .font(.system(size: 16, weight: .light, design: .default))
                }
                
            }
            
        }
        
    }
}


struct ScoreComparison_Previews: PreviewProvider {
   static var previews: some View {
       ScoreComparison(givenPlayers: players)
    }
}
