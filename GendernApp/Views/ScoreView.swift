//
//  ScoreView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        VStack(spacing: 10){
            
            //CurrentScore(text: "")
            //Score wird allerdings nicht angezigt kp warum
            Text("your current Score:\(currentplayer.currentscore)")
             .font(.title)
             .fontWeight(.heavy)
             .foregroundColor(Color("TextColor"))
            
            List {
                ScoreComparison(givenPlayers: players)
                    //andere Farbe wäre noch gut
                    .listRowBackground(Color.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
            .scrollContentBackground(.hidden)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
