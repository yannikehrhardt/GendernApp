//
//  AddQuestionsView.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 13.12.22.
//

import SwiftUI

struct AddQuestionsView: View {
    
    @EnvironmentObject var questions : Questions
    
    @EnvironmentObject var players: Players
    
    @State var thema: String = ""
    @State var frage: String = ""
    @State var richtigeAntwort: String = ""
    @State var falscheAntwort1: String = ""
    @State var falscheAntwort2: String = ""
    @State var weitereInformationen: String = ""
    
    @State private var isSelected = false
    
    var body: some View {
        VStack(spacing: 30){
            
            
            
            Text("Fill in the Textfields")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.bottom)
                .padding(.top, 50)
            
            TextField(
                "Please type a topic (Uni, Schule, Alltag) ...", text: $thema)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Please type a question...", text: $frage)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Please type a correct answer...", text: $richtigeAntwort)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Please type the first wrong answer...", text: $falscheAntwort1)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Please type the second wrong answer...", text: $falscheAntwort2)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Please type a explanation...", text: $weitereInformationen)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            let quizNew = Quiz.init(id: UUID.init(), type: "gap text", topic: thema, question: frage, correctAnswer: richtigeAntwort, allAnswers: [richtigeAntwort, falscheAntwort1, falscheAntwort2], answered: [], furtherInformation: weitereInformationen)
            
            AddQuizButton()
                .shadow(color: isSelected && (thema == "Uni" || thema == "Schule" || thema == "Alltag") ? .green : .red, radius: 5, x: 0.5, y: 0.5)
                .onTapGesture() {
                    
                    isSelected = true
                    
                    questions.quizze.append(quizNew)
                    //quizze.append(quizNew)
                    
                    if (thema == "Uni") {
                        questions.UniQuizze = questions.addQuizze("Uni")
                        //UniQuizze = addQuizze("Uni")
                    }
                    else if (thema == "Schule"){
                        questions.SchuleQuizze = questions.addQuizze("Schule")
                        //SchuleQuizze = addQuizze("Schule")
                    }
                    else if (thema == "Alltag") {
                        questions.AlltagQuizze = questions.addQuizze("Alltag")
                        //AlltagQuizze = addQuizze("Alltag")
                    }
                }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .environmentObject(players)
        
    }
}

struct AddQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        
        AddQuestionsView()
            .environmentObject(Players())
            .environmentObject(Questions())
    }
}
