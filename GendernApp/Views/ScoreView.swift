//
//  ScoreView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        VStack(spacing: 20){
            //CurrentScore(text: "")
            Text("Your current score: \(currentplayer.currentscore)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 50)
            List {
                ScoreComparison(givenPlayers: players)
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
        ScoreView()
    }
}
