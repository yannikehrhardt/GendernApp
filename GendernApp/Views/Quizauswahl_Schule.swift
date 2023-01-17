//
//  Quizauswahl_Schule.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import SwiftUI

struct Quizauswahl_Schule: View {
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
            
            QuizButton(givenQuiz: questions.SchuleQuizze)
            
            NavigationLink{
                RuleView()
            }label: {
                RuleButton()
            }
            
            CurrentScore()
                .padding(.bottom)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .environmentObject(players)
        .environmentObject(questions)
        .environmentObject(rules)
    }
}

struct Quizauswahl_Schule_Previews: PreviewProvider {
    static var previews: some View {
        Quizauswahl_Schule()
            .environmentObject(Players())
            .environmentObject(Questions())
            .environmentObject(Rules())
    }
}
