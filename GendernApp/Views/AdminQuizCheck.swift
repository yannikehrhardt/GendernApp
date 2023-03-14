//
//  AdminQuizCheck.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 10.03.23.
//
// In dieser View können Admins erstellte Fragen von anderen Nutzenden einsehen

import SwiftUI

//Dieses Struct listet, ähnlich wie in der Quizauswahl der einzelnen Themengebiete, eine Reihe an Quizfragen auf. Diese können von Admin-Accounts geprüft werden (in admin Quiz View)
struct AdminQuizCheck: View {
    @EnvironmentObject var players: Players
    @EnvironmentObject var questions: Questions
    
    var body: some View {
        VStack{
            Text("Admin: Neue Fragen überprüfen")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.bottom)
                .padding(.top, 50)
            
            LoadTestableQuestions(givenQuiz: questions.toBeTested)
        }
        .background(Image("Backgrounds App"))
        .environmentObject(players)
        .environmentObject(questions)
    }
}

struct AdminQuizCheck_Previews: PreviewProvider {
    static var previews: some View {
        AdminQuizCheck()
            .environmentObject(Players())
            .environmentObject(Questions())
    }
}
