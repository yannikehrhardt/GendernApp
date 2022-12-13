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
        Text("Your Score")
            .font(.title3)
            .fontWeight(.medium)
            .foregroundColor(Color.white)
            .padding()
            .padding(.horizontal)
            .background(Color("ButtonColor"))
            .cornerRadius(20)
            .shadow(radius: 10)
        
    }
}

struct ScoreViewButton_Previews: PreviewProvider {
    static var previews: some View {
        ScoreViewButton()
    }
}
