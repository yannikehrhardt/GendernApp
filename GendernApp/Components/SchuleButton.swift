//
//  SchuleButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 25.11.22.
//

// In dieser SwiftUIView wird der Themen Button "Schule" implementiert, der aus einem Text und einer Background-Color besteht
// Der Button wird in der Themenauswahl verwendet

import SwiftUI

struct SchuleButton: View {
    var text: String
    var background: Color = Color("ButtonColor")
    
    var body: some View {
        Text("Schule")
            .foregroundColor(Color.white)
            .padding()
            .padding(.horizontal)
            .background(Color("ButtonColor"))
            .cornerRadius(20)
            .shadow(radius: 10)
    }
}

struct SchuleButton_Previews: PreviewProvider {
    static var previews: some View {
        SchuleButton(text: "Schule")
    }
}
