//
//  Quizauswahl_Alltag.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import SwiftUI

struct Quizauswahl_Alltag: View {
    @EnvironmentObject var players: Players
    @EnvironmentObject var questions : Questions
    @EnvironmentObject var rules: Rules
    
    var body: some View {
        VStack(spacing: 20){
            
            Text("Wähle ein Quiz aus!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.top, 50)
                .shadow(radius: 20)
            
            //Die Logik im QuizButton stellt alle zum Themenbereich passenden Quizze als Buttons dar
            QuizButton(givenQuiz: questions.AlltagQuizze)
            
            // Darstellung des Scores und de Button am unteren Bildschrimrand
            HStack{
                CurrentScore()
                //Button führt zur Regelübersicht
                NavigationLink{
                    RuleView()
                }label: {
                    RuleButton()
                }
                .padding(.leading, 20)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .environmentObject(players)
        .environmentObject(questions)
        .environmentObject(rules)
    }
}

struct Quizauswahl_Alltag_Previews: PreviewProvider {
    static var previews: some View {
        Quizauswahl_Alltag()
            .environmentObject(Players())
            .environmentObject(Questions())
            .environmentObject(Rules())
    }
}
