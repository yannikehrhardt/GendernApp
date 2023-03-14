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
    
    @State var presentPopup = false
    @State var presentPopup2 = true
    
    let images = [Image("Image 1"), Image("Image 2"), Image("Image 3"), Image("Image 4"), Image("Image 5")]
    
    var givenQuiz : Quiz

    
    var body: some View {
        VStack(){
            Image("Genderzeichen groß")
            
                //Quizfrage
                Text(givenQuiz.question)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    //.padding(.top, 20)
                    .frame(width: 380, height: 250)
                    .shadow(radius: 20)
                
                //Abhängig davon, wie viele korrekte Anworten vorliegen, wird der Text über den Antwortmöglichkeiten angepasst
                if(questions.numberOfCorrectAnswers(givenQuiz) == 1){
                    Text("Wähle die korrekte Anwort aus")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 20)
                }
                
                if(questions.numberOfCorrectAnswers(givenQuiz) == 2){
                    Text("Wähle beide korrekten Anworten aus")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 20)
                }
                
                if(questions.numberOfCorrectAnswers(givenQuiz) == 3){
                    Text("Wähle die korrekten Anworten aus")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 20)
                }
            
            //Aufruf zur Auflistung der Antwortmöglichkeiten
            AllAnswers(answer: givenQuiz)
            
            //sobald die korrekten Antwortmöglichkeiten ausgewählt wurden, kann sich die spielende Person eine Belohnung abholen
            if(players.currentplayer.answered.contains(givenQuiz.id)){
                HStack{
                    Image(systemName: "gift")
                        .font(.title2)
                        .frame(alignment: .leading)
                    
                    Button("Belohnung") {
                        presentPopup2 = true
                    }
                    .foregroundColor(.white)
                    .font(.title2)
                    .popover(isPresented: $presentPopup2, arrowEdge: .bottom) {
                        
                        VStack{
                            Image(systemName: "chevron.down")
                                .font(.title2)
                                .frame(alignment: .leading)
                            
                            Spacer()
                            
                            VStack{
                                Text("Glückwunsch!!!")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding(.top, 20)
                                    .shadow(radius: 20)
                                
                                images.randomElement()
                            }
                            .frame(width: 400, height: 600)
                            
                        }
                        .background(Image("Backgrounds App"))
                        
                    }
                }
                .frame(width: 160, height: 50)
                .background(Color("ButtonColor"))
                .cornerRadius(30)
                .padding(.top)
            }
                        
            
            HStack{
                //Anzeige des aktuellen Scores
                CurrentScore()
                    .padding(.trailing, 20)
               
                HStack{
                    Image(systemName: "info.circle")
                        .font(.title3)
                    
                    //Nach dem Anklicken des Buttons Info erscheint ein Popup mit dem Lösungsansatz zur Frage (Variable furtherInformation eines Quizzes)
                    Button("Info"){
                        presentPopup = true
                    }
                    .font(.title3)
                    .fontWeight(.medium)
                    .popover(isPresented: $presentPopup, arrowEdge: .bottom) {
                        InfoView(givenQuiz: givenQuiz)
                    }
                }
                .foregroundColor(Color.white)
                .padding()
                .background(Color("ButtonColor"))
                .cornerRadius(200)
                .shadow(radius: 20)
            }
            .padding(.top, 15)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .environmentObject(players)
        .environmentObject(questions)
    }
}


