//
//  Quizauswahl_Universitat.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import SwiftUI

struct Quizauswahl_Universitat: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Pick a Quiz")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.bottom, 20.0)
            
            // an dieser Stelle sollte jetzt die Funktion für das automatische generieren von Buttons eingefügt werden
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
    }
}

struct Quizauswahl_Universitat_Previews: PreviewProvider {
    static var previews: some View {
        Quizauswahl_Universitat()
    }
}
