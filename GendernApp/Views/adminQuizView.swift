//
//  adminQuizView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 10.03.23.
//

import SwiftUI

struct adminQuizView: View {
    @State var givenQuiz : Quiz
    @EnvironmentObject var players: Players
    @EnvironmentObject var questions : Questions
    var body: some View {
        
        VStack{
            Text(givenQuiz.question)
            
            Text(givenQuiz.correctAnswer[0])
            
            Text(givenQuiz.allAnswers[0])
            
            Text(givenQuiz.allAnswers[1])
            
            Text(givenQuiz.allAnswers[2])
            
            HStack{
                AdminConfirmQuizButton()
                    .onTapGesture() {
                        questions.quizze.append(givenQuiz)
                        
                        if(givenQuiz.topic == "Uni"){
                            questions.UniQuizze = questions.addQuizze("Uni")
                        }
                        
                        if(givenQuiz.topic == "Schule"){
                            questions.SchuleQuizze = questions.addQuizze("Schule")
                        }
                        
                        if(givenQuiz.topic == "Alltag"){
                            questions.AlltagQuizze = questions.addQuizze("Alltag")
                        }
                        
                        questions.toBeTested.remove(at: questions.getQuizOffset(givenQuiz, whichQuiz: "toBeTested"))
                    }
                
                Spacer()
                
                AdminDeleteQuizButton()
                    .onTapGesture() {
                        questions.toBeTested.remove(at: questions.getQuizOffset(givenQuiz, whichQuiz: "toBeTested"))
                    }
            }
            .frame(width: 370)
        }
        .frame(maxWidth: 300, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .environmentObject(players)
        .environmentObject(questions)
    }
}

struct adminQuizView_Previews: PreviewProvider {
    static var previews: some View {
        adminQuizView(givenQuiz: Questions().quiz400)
            .environmentObject(Players())
            .environmentObject(Questions())
    }
}
