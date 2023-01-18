//
//  ScoreView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

struct ScoreView: View {
    //curr
    @State var currentplayer: PlayerTemplate
    @State var givenplayers : [PlayerTemplate]
    @State var playerscore : Int
    var body: some View {
        VStack(spacing: 20){
            //CurrentScore(text: "")
            Text("Your current score: \(currentplayer.currentscore)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 50)
                .shadow(radius: 20)

            List {
               ScoreComparison(givenPlayers: givenplayers, currentplayer: currentplayer)

                    //andere Farbe wäre noch gut
                    .listRowBackground(Color.white)
            }
        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .scrollContentBackground(.hidden)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        let player = Players()
        ScoreView(currentplayer: player.currentplayer, givenplayers: player.players, playerscore: 10)
    }
}
