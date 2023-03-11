//
//  LoadTestableQuestions.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 10.03.23.
//
//UIView zur Darstellung der von Usern erstelletn Quizze

import SwiftUI

struct LoadTestableQuestions: View {
    var givenQuiz : [Quiz]
    @EnvironmentObject var players: Players
    @EnvironmentObject var questions : Questions
    
    var body: some View {
        ScrollView{
            VStack(spacing: 15){
                ForEach(givenQuiz, id: \.self.id) { quiz in   // foreach-Schleife zum durchsuchen des Array givenQuiz, der mit Quizzen beladen ist. Für jedes Quiz in givenquiz wird ein Button erstellt, den die question des Quizzes als Text übergeben bekommt
                    VStack(spacing:20){
                        NavigationLink(destination: adminQuizView(givenQuiz: quiz)){ //NavigationLink der beim Klicken des Buttons zur adminQuizView führt
                            Text(quiz.question)
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                                .padding()
                                .padding(.horizontal)
                        }
                        
                        Text("Hinzugefügt von: \(quiz.createdBy)")
                            .font(.footnote)
                    }
                    .frame(width:350, height: 150)
                    .background(Color("ButtonColor"))
                    .cornerRadius(20)
                    .shadow(radius: 20)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .environmentObject(players)
            .environmentObject(questions)
            
        }
        .padding(.top)
    }
}

struct LoadTestableQuestions_Previews: PreviewProvider {
    static var previews: some View {
        LoadTestableQuestions(givenQuiz: Questions().toBeTested)
            .environmentObject(Players())
            .environmentObject(Questions())
    }
}
