//
//  QuizView.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

import SwiftUI

struct QuizView: View {
    @State private var answer: String = "" // Test Variable (so wird kein Fehler ausgeworfen)
    
    var body: some View {
        VStack(spacing:40){
            ProgressView(value: 0.5) // zeigt an wie viele Fragen man noch vor sich hat (Fortschritt)
                .padding()
            VStack(spacing:20){
                VStack(spacing:40){
                    Text(quiz1.question) // aus Questions quiz1
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("TextColor"))
                        .padding(.bottom, 50.0)
                }
                TextField(
                    "Please type your answer...",
                    text: quiz1.$correctAnswer) // funktioniert nicht für quiz1
                    .padding(.leading, 40.0)
                    .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
                    .shadow(radius: 10)
                    .cornerRadius(20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
