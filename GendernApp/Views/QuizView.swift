//
//  QuizView.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

import SwiftUI

struct QuizView: View {
    @EnvironmentObject var players: Players
    @EnvironmentObject var questions : Questions
    
    var givenQuiz : Quiz

    
    var body: some View {
        VStack(spacing:40){
            VStack(spacing:20){
                VStack(spacing:40){
                    
                    Text(givenQuiz.question) // aus Questions quiz1
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.top, 100)
                        .frame(width: 400, height: 300)
                        .shadow(radius: 20)
                }
                
                AnswerRow(givenQuiz: givenQuiz)
                
                NavigationLink {
                    InfoView(givenQuiz: givenQuiz)
                }label: {
                    InfoButton()
                        .padding(.top)
                }
                CurrentScore()
                    .padding(.top)
                
                
                

                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .environmentObject(players)
        .environmentObject(questions)
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(givenQuiz: Questions().quiz1)
            .environmentObject(Players())
            .environmentObject(Questions())
    }
}

//TextField(
  //  "Please type your answer...",
  //  text: quiz1.$correctAnswer) //aus quiz1
//.padding(.leading, 40.0)
//.frame(width: 300.0, height: 30.0)
//.background(Color.white)
//.shadow(radius: 10)
// .cornerRadius(20)
