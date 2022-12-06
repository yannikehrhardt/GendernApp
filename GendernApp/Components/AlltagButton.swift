//
//  AlltagButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 25.11.22.
//

// In dieser SwiftUIView wird der Themen Button "Alltag" implementiert, der aus einem Text und einer Background-Color besteht
// Der Button wird in der Themenauswahl verwendet

import SwiftUI

struct AlltagButton: View {
    var text: String
    var background: Color = Color("ButtonColor")
    var body: some View {
        Text("Alltag")
            .foregroundColor(Color.white)
            .padding()
            .padding(.horizontal)
            .background(Color("ButtonColor"))
            .cornerRadius(20)
            .shadow(radius: 10)
    }
}

struct AlltagButton_Previews: PreviewProvider {
    static var previews: some View {
        AlltagButton(text: "Alltag")
    }
}
