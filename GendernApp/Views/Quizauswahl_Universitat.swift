//
//  Quizauswahl_Universitat.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import SwiftUI

struct Quizauswahl_Universitat: View {
    
    var body: some View {
            VStack(spacing: 40){
                Text("Pick a Quiz")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextColor"))
                    .padding(.top)
               
                QuizButton(givenQuiz: UniQuizze)
                
                
                
                CurrentScore(text: "")
                    .padding(.top, 50.0)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
            .scrollContentBackground(.hidden)
        }
    }
    
    struct Quizauswahl_Universitat_Previews: PreviewProvider {
        static var previews: some View {
            Quizauswahl_Universitat()
        }
    }

