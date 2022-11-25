//
//  PrimaryButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 25.11.22.
//

import SwiftUI

struct PlayButton: View {
    var text: String
    var background: Color = Color("ButtonColor")
    
    var body: some View {
        Text("Play")
            .foregroundColor(Color.white)
            .padding()
            .padding(.horizontal)
            .background(Color("ButtonColor"))
            .cornerRadius(20)
            .shadow(radius: 10)
        
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton(text: "Play")
    }
}
