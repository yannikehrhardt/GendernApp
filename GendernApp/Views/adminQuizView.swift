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
    
    //der Status gibt an, ob bereits einer der Buttons zum bestätigen oder löschen betätigt wurde (gibt den zuletzt betätigten Button an). Für Bestätigen nimmt der testingStatus den Wert 1 an, für Löschen den Wert 2
    @State var testingStatus = 0
    
    var body: some View {
        VStack{
            VStack{
                Text(givenQuiz.question)
                    .frame(width: 380, height: 260)
                    .background(Color(.white))
                    .cornerRadius(20)
                
                Spacer()
               
                ForEach(givenQuiz.allAnswers, id: \.self) { answer in
                        HStack{
                            if(givenQuiz.correctAnswer.contains(answer)){
                                Image(systemName:  "checkmark.circle.fill")
                                    .foregroundColor(.green)
                            }
                            else{
                                Image(systemName:  "x.circle.fill")
                                    .foregroundColor(.red)
                            }
                            Spacer()
                            
                            Text(answer)
                        }
                        .padding()
                        .frame(width: 380, height: 80)
                        .foregroundColor(.gray)
                        .background(.white)
                        .cornerRadius(10)
                    }
                
                NavigationLink {
                    InfoView(givenQuiz: givenQuiz)
                }label: {
                    InfoButton()}
            }
            .frame(width: 400, height: 600)
            
            Spacer()
            
            HStack{
                AdminConfirmQuizButton()
                    .onTapGesture() {
                        if(testingStatus == 0 || testingStatus == 2){
                            
                            //ist der Status vorher 0 oder 2, so muss das Quiz einsortiert werden (in quizze und in das Array des zugehörigen Themas
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
                            
                            //wenn der Status zuvor auf 2 stand, dann wurde das Quiz schon aus toBeTested entfernt & muss/darf an dieser Stelle nicht nochmal getan werden
                            if(testingStatus == 0 ){
                                questions.toBeTested.remove(at: questions.getQuizOffset(givenQuiz, whichQuiz: "toBeTested"))
                            }
                        }
                        //Status setzen
                        testingStatus = 1
                    }
                
                Spacer()
                
                AdminDeleteQuizButton()
                    .onTapGesture() {
                        //Wenn testingStatus vorher auf 0 steht, wird das Quiz einfach nur aus toBeTested entfernt
                        if(testingStatus == 0){
                            questions.toBeTested.remove(at: questions.getQuizOffset(givenQuiz, whichQuiz: "toBeTested"))
                        }
                        //wenn zuvor das Quiz schon zu quizze hinzugefügt wurde, dann wird es dann wieder entfernt. Da durch den ConfirmButton das Quiz schon aus toBeTested entfernt wurde, muss/darf es nicht nochmal gemacht werden
                        if(testingStatus == 1){
                            questions.quizze.remove(at: questions.getQuizOffset(givenQuiz, whichQuiz: "quizze"))
                        }
                        //Status setzen
                        testingStatus = 2
                    }
            }
            .frame(width: 380)
            
            if(testingStatus == 0){
                Text("Status: Frage wird gerade geprüft.")
                    .frame(width: 380)
            }
            
            if(testingStatus == 1){
                Text("Status: Diese Frage wurde von dir hinzugefügt.")
                    .frame(width: 380)
            }
            
            if(testingStatus == 2){
                Text("Status: Diese Frage wurde von dir gelöscht.")
                    .frame(width: 380)
            }
        }
        .frame(maxWidth: 300, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .environmentObject(players)
        .environmentObject(questions)
    }
}
