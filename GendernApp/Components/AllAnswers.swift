//
//  IncorrectAnswer.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 30.11.22.
//

// In dieser SwiftUIFile wird die Darstellung und Interaktion der Antwortmöglichkeiten implementiert. Es gibt eine richtige und zwei falsche Antworten.

import SwiftUI

struct AllAnswers: View {
    
    var answer: Quiz
    @EnvironmentObject var players: Players
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    var green = Color("CorrectAnswer")
    var red = Color ("WrongAnswer")
    
    
    var body: some View {
        VStack{
            HStack(spacing: 20){ // erste Antwortmöglichkeit
                
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer.allAnswers[0])
                    .bold()
               // wenn der Button ausgewählt wurde und wenn die korrekte Antwort der ersten Antwort im Array allAnswers des Quiz entspricht, die immer die richtige antwort ist, dann erscheint ein grüner checkmark, ansonsten erscheint ein rotes x
                if isSelected3 && answer.allAnswers[0] ==  answer.correctAnswer {
                    Spacer()
                    
                    Image(systemName:  "checkmark.circle.fill")
                        .foregroundColor(green)
                        .onAppear(){
                            self.players.addScore()
                        }

                }
                else {
                    if isSelected3{
                        Spacer()
                        
                        Image(systemName:  "x.circle.fill")
                            .foregroundColor(red)
                    }
                }
            }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(isSelected3 ? Color("ButtonColor") : .gray)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: isSelected3 ? ( answer.allAnswers[0] == answer.correctAnswer ?  green : red) : .gray, radius: 5, x: 0.5, y: 0.5) // wenn der Button ausgewählt wurde und die erste Antwort des Arrays allAnswers der korrketen Antwort des Quiz entspricht, dann wird der Schatten des Buttons grün, ansonsten rot. Unausgewählt bleibt der Schatte des Button grau.
                    .onTapGesture {
                        isSelected3 = true
                    }


            
            HStack(spacing: 20){ // zweite Antwortmöglichkeit
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer.allAnswers[1])
                    .bold()
                
                if isSelected && answer.allAnswers[1] == answer.correctAnswer {
                    Spacer()
                    
                    Image(systemName:  "checkmark.circle.fill")
                        .foregroundColor(green)
                        .onAppear(){
                            self.players.addScore()
                            setQuizAnswered(self.answer)
                        }
                }
                else {
                    if isSelected{
                        Spacer()
                        
                        Image(systemName:  "x.circle.fill")
                            .foregroundColor(red)
                    }
                }

            }
            .padding()
            .foregroundColor(isSelected ? Color("ButtonColor") : .gray)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: isSelected ? (answer.allAnswers[1] == answer.correctAnswer ?  green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
            .onTapGesture {
                isSelected = true
            }
            
            HStack(spacing: 20){ // dritte Antwortmöglichkeit
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer.allAnswers[2])
                    .bold()
                
                if isSelected2 && answer.allAnswers[2] == answer.correctAnswer {
                    Spacer()
                    
                    Image(systemName:  "checkmark.circle.fill")
                        .foregroundColor(green)
                        .onAppear(){
                            self.players.addScore()
                            setQuizAnswered(self.answer)
                        }
                }
                else {
                    if isSelected2{
                        Spacer()
                        
                        Image(systemName:  "x.circle.fill")
                            .foregroundColor(red)
                    }
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(isSelected2 ? Color("ButtonColor") : .gray)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: isSelected2 ? (answer.allAnswers[2] == answer.correctAnswer ?  green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
            .onTapGesture {
                isSelected2 = true
            }
            Text("your score: \(players.currentplayer.currentscore)")
        }
    }
    
    
    struct IncorrectAnswer_Previews: PreviewProvider {
        static var previews: some View {
            AllAnswers(answer: Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo1?", correctAnswer: "hallo", allAnswers: ["hallo","falsch", "wrong"], answered: false, furtherInformation: "")).environmentObject(Players())
        }
    }
    
}
