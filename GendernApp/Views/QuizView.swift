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
        VStack(spacing:20){
            VStack(spacing:30){
                VStack(spacing:10){
                    
                    //Quizfrage
                    Text(givenQuiz.question)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.top, 30)
                        .frame(width: 400, height: 300)
                        .shadow(radius: 20)
                    
                    //die drei nächsten if-Abfragen zeigen an, wie viele Antworten korrekt sind
                    if(questions.numberOfCorrectAnswers(givenQuiz) == 1){
                        Text("Wähle die korrekte Anwort aus")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 400, height: 10)
                            .shadow(radius: 20)
                    }
                    
                    if(questions.numberOfCorrectAnswers(givenQuiz) == 2){
                        Text("Wähle beide korrekten Anworten aus")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 400, height: 10)
                            .shadow(radius: 20)
                    }
                    
                    if(questions.numberOfCorrectAnswers(givenQuiz) == 3){
                        Text("Wähle alle drei korrekten Anworten aus")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 400, height: 10)
                            .shadow(radius: 20)
                    }
                }
                //Aufruf zur Auflistung der Antwortmöglichkeiten
                AllAnswers(answer: givenQuiz)
                
                //mit dem Info-Button erhält der Spielende weitere Hinweise zur korrekten Antwort
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
