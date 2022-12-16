//
//  CurrentScore.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 06.12.22.
//

// In dieser SwiftUIFile wird die Darstellung des CurrentScore implementiert

import SwiftUI

struct CurrentScore: View {
    @State var score : Int
    var background: Color = Color("ButtonColor")
    
    var body: some View {
        Text("Score: \(score)")
            .font(.title2)
            .fontWeight(.heavy)
            .foregroundColor(.black)
            .padding()
            .padding(.horizontal)
        }
    }


struct CurrentScore_Previews: PreviewProvider {
    static var previews: some View {
        CurrentScore(score: 10)
    }
}
