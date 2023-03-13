//
//  IncorrectAnswer.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 30.11.22.
//

// In dieser SwiftUIFile wird die Darstellung und Interaktion der Antwortmöglichkeiten implementiert.

import SwiftUI

struct AllAnswers: View {
    //answer ist das übergebene Quizobjekt
    var answer: Quiz
    
    @EnvironmentObject var players: Players
    @EnvironmentObject var questions : Questions
    
    //die Variablen geben an, welche der drei Felder breits ausgewählt wurden
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    
    //Farbe der Haken, beim Beantworten von Fragen
    var green = Color("CorrectAnswer")
    var red = Color ("WrongAnswer")
    
    var body: some View {
        VStack{
            HStack(spacing: 20){ // erste Antwortmöglichkeit
                
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer.allAnswers[0])
                    .bold()
                
                //wenn die Frage gewählt wurde und korrekt ist, wird später ein Haken gesetzt (immer), der Score wird erhöht und die Frage als beantwortet gesetzt (jeweils sobald alle richtigen Fragen beantwortet wurden)
                //in dieser if-Abfrage werden dafür alle Elemente im Array correctAnswers mit der aktuellen Frage abgeglichen
                if (isSelected3 && answer.correctAnswer.contains(answer.allAnswers[0])){
                    
                    Spacer()
                    
                    Image(systemName:  "checkmark.circle.fill")
                        .foregroundColor(green)
                        .onAppear(){
                            self.questions.addCorrectAnswered(answer)
                            
                            //wenn Frage vom aktuellen Spieler noch nicht beantwortet wurde, dann setze den Score hoch und die Frage auf beantwortet (wenn alle richtigen Fragen beantwortet wurden)
                            //Diese if-Abfrage prüft, (1) ob der Spieler die Frage schon beantwortet hat und (2) alle korrekte Fragen ausgewählt wurden
                            if(!players.players[players.usernameOffset(players.currentplayer.username)].answered.contains(answer.id) && questions.numberOfCorrectAnswers(answer) == self.questions.quizze[self.questions.getQuizOffset(answer, whichQuiz: "quizze")].correctlySelectedAnswers){
                           
                                self.players.addScore()
                                players.setQuizAnswered(answer)
                            }
                        }
                }
                
                //ist die Frage falsch, so wird der rote Haken gesetzt
                else {
                    if isSelected3{
                        Spacer()
                        
                        Image(systemName:  "x.circle.fill")
                            .foregroundColor(red)
                            .onAppear(){
                                self.players.reduceScore(amount: 5)
                            }
                    }
                }
            }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(width: 400, height: 80)
                    .foregroundColor(isSelected3 ? Color("ButtonColor") : .gray)
                    .background(.white)
                    .cornerRadius(10)
            
                    //Farbige Umrandung der Antwortmöglichkeit
                    .shadow(color: isSelected3 ?
                            (answer.correctAnswer.contains(answer.allAnswers[0]) ?  green : red) : .gray, radius: 5, x: 0.5, y: 0.5) // wenn der Button ausgewählt wurde und die erste Antwort des Arrays allAnswers der korrekten Antwort des Quiz entspricht, dann wird der Schatten des Buttons grün, ansonsten rot. Unausgewählt bleibt der Schatte des Button grau.
                    .onTapGesture {
                        isSelected3 = true
                    }

            

            // zweite Antwortmöglichkeit
            HStack(spacing: 20){
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer.allAnswers[1])
                    .bold()
                
                //wie oben: Haken, Punkte und auf beantwortet setzen
                if (isSelected && answer.correctAnswer.contains(answer.allAnswers[1])) {
                    
                    Spacer()
                    
                    Image(systemName:  "checkmark.circle.fill")
                        .foregroundColor(green)
                        .onAppear(){
                            self.questions.addCorrectAnswered(answer)
                            
                            if(!players.players[players.usernameOffset(players.currentplayer.username)].answered.contains(answer.id) && questions.numberOfCorrectAnswers(answer) == self.questions.quizze[self.questions.getQuizOffset(answer, whichQuiz: "quizze")].correctlySelectedAnswers){
                           
                                self.players.addScore()
                                players.setQuizAnswered(answer)
                            }
                        }
                }
                else {
                    if isSelected{
                        Spacer()
                        
                        Image(systemName:  "x.circle.fill")
                            .foregroundColor(red)
                            .onAppear(){
                                self.players.reduceScore(amount: 5)
                            }
                    }
                }

            }
            .padding()
            .foregroundColor(isSelected ? Color("ButtonColor") : .gray)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(width: 400, height: 80)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: isSelected ?
                    (answer.correctAnswer.contains(answer.allAnswers[1]) ?  green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
            .onTapGesture {
                isSelected = true
            }
            
            
            
            // dritte Antwortmöglichkeit
            HStack(spacing: 20){
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer.allAnswers[2])
                    .bold()
                
                if (isSelected2 &&
                    answer.correctAnswer.contains(answer.allAnswers[2])) {
                    
                    Spacer()
                    
                    Image(systemName:  "checkmark.circle.fill")
                        .foregroundColor(green)
                        .onAppear(){
                            self.questions.addCorrectAnswered(answer)

                            //wenn Frage vom aktuellen Spieler noch nicht beantwortet wurde, dann setze den Score hoch und die Frage auf beantwortet
                            if(!players.players[players.usernameOffset(players.currentplayer.username)].answered.contains(answer.id) && questions.numberOfCorrectAnswers(answer) == self.questions.quizze[self.questions.getQuizOffset(answer, whichQuiz: "quizze")].correctlySelectedAnswers){
                           
                                self.players.addScore()
                                players.setQuizAnswered(answer)
                            }
                        }
                }
                else {
                    if isSelected2{
                        Spacer()
                        
                        Image(systemName:  "x.circle.fill")
                            .foregroundColor(red)
                            .onAppear(){
                                self.players.reduceScore(amount: 5)
                            }
                    }
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(width: 400, height: 80)
            .foregroundColor(isSelected2 ? Color("ButtonColor") : .gray)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: isSelected2 ?
                    (answer.correctAnswer.contains(answer.allAnswers[2]) ?  green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
            .onTapGesture {
                isSelected2 = true
            
            }
            .environmentObject(questions)
            .environmentObject(players)
        }
    }
    
    
    struct IncorrectAnswer_Previews: PreviewProvider {
        static var previews: some View {
            AllAnswers(answer: Quiz(type: "gap text" , topic: "Uni", question: "hallo1?", correctAnswer: ["hallo", "falsch", ""], allAnswers: ["hallo","falsch", "wrong"], furtherInformation: "", createdBy: "test"))
                .environmentObject(Players())
                .environmentObject(Questions())
        }
    }
    
}
