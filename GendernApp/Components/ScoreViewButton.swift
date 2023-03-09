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
        HStack(spacing:20){
            Image(systemName: "person.3")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .frame(width: 80, height: 80)
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
