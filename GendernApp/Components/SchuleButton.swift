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

    var background: Color = Color("ButtonColor")
    
    var body: some View {
            VStack(spacing:20){
                Text("Schule")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)

                
            }
            .frame(width: 250, height: 80)
            .background(Color("ButtonColor"))
            .cornerRadius(20)
            .shadow(radius: 20)
    }
}

struct SchuleButton_Previews: PreviewProvider {
    static var previews: some View {
        SchuleButton()
    }
}
