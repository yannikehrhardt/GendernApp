//
//  Quizauswahl_Universitat.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import SwiftUI

struct Quizauswahl_Universitat: View {
    @EnvironmentObject var players: Players
    @EnvironmentObject var questions: Questions
    
    var body: some View {
            VStack(spacing: 40){
                Text("Pick a Quiz")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextColor"))
                    .padding(.top, 50)
               

                QuizButton(givenQuiz: questions.UniQuizze)
                
                CurrentScore()

                    .padding(.bottom)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
            .scrollContentBackground(.hidden)
            .environmentObject(players)
            .environmentObject(questions)
        }
    }
    
    struct Quizauswahl_Universitat_Previews: PreviewProvider {
        static var previews: some View {
            Quizauswahl_Universitat()
                .environmentObject(Players())
                .environmentObject(Questions())
        }
    }

