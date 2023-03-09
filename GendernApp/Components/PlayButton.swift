//
//  PlayButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 25.11.22.
//

// In dieser SwiftUIView wird ein Play-Button implementiert, der aus einem Text und einer Background-Color besteht
// Der Button wird im Content View verwendet

import SwiftUI

struct PlayButton: View {
    var background: Color = Color("ButtonColor")
    
    var body: some View {
        VStack(spacing:20){
            Text("Log In")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
        }
        .frame(width: 150, height: 60)
        .background(Color("ButtonColor"))
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton()
    }
}
