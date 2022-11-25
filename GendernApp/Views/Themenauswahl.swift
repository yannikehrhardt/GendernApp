//
//  Themenauswahl.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

import SwiftUI

struct Themenauswahl: View {
    var body: some View {
        HStack {
            VStack(spacing: 20) {
                Text("Select a topic")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextColor"))
                    .padding(.bottom, 20.0)
                 
                NavigationLink{
                    Quizauswahl_Universitat()
                }label: {
                    Universita_tButton(text: "Universität")
                }
                
                NavigationLink{
                    Quizauswahl_Universitat()
                }label: {
                    SchuleButton(text: "Schule")
                }
                NavigationLink{
                    Quizauswahl_Universitat()
                }label: {
                    AlltagButton(text: "Alltag")
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
        .navigationBarBackButtonHidden(true)
        }
    }
}

struct Themenauswahl_Previews: PreviewProvider {
    static var previews: some View {
        Themenauswahl()
    }
}
