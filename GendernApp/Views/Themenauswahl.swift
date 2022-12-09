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
                Text("Please select a topic")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextColor"))
                    .padding(.bottom, 50.0)
                    .padding(.top, 50)
                 
                
                NavigationLink{
                    Quizauswahl_Universitat()
                }label: {
                    UniversitatButton(text: "Universität")
                }
                
                
                NavigationLink{
                    Quizauswahl_Schule()
                }label: {
                    SchuleButton(text: "Schule")
                }
                
                
                NavigationLink{
                    Quizauswahl_Alltag()
                }label: {
                    AlltagButton(text: "Alltag")
                }
                
                
                NavigationLink{
                    ScoreView()
                } label: {
                    ScoreViewButton()
                }
                .padding(.top, 150)
                
                
                
                CurrentScore(text: "")
                    .padding(.top, 10)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
         //   .navigationBarBackButtonHidden(true)
        }
    }
}

struct Themenauswahl_Previews: PreviewProvider {
    static var previews: some View {
        Themenauswahl()
    }
}
