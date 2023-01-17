//
//  ScoreViewButton.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

struct ScoreViewButton: View {
    var background: Color = Color("ButtonColor")
    
    var body: some View {
        VStack(spacing:20){
            Text("Vergleiche deinen Score")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                
        }
        .frame(width:200, height: 70)
        .background(Color("ButtonColor"))
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct ScoreViewButton_Previews: PreviewProvider {
    static var previews: some View {
        ScoreViewButton()
    }
}
