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
    
    var givenQuiz : Quiz

    
    var body: some View {
        VStack(){
                //Quizfrage
                Text(givenQuiz.question)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.top, 20)
                    .frame(width: 400, height: 150)
                    .shadow(radius: 20)
                
                //die drei nächsten if-Abfragen zeigen an, wie viele Antworten korrekt sind
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
                    Text("Wähle alle drei korrekten Anworten aus")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 20)
                }
            //Aufruf zur Auflistung der Antwortmöglichkeiten
            AllAnswers(answer: givenQuiz)
            
            if(questions.numberOfCorrectAnswers(givenQuiz) == self.questions.quizze[self.questions.getQuizOffset(givenQuiz)].correctlySelectedAnswers){
                HStack{
                    
                    Image(systemName: "gift")
                        .font(.title2)
                        .frame(alignment: .leading)
                    
                    Button("Belohnung") {
                        presentPopup = true
                    }
                    .foregroundColor(.white)
                    .font(.title2)
                    .popover(isPresented: $presentPopup, arrowEdge: .bottom) {
                            
                        Image("Image")
                        .background(Image("Backgrounds App"))
                            
                    }
                }
                .frame(width: 160, height: 50)
                .background(Color("ButtonColor"))
                .cornerRadius(30)
                .padding(.top)
            }
            
            
            //mit dem Info-Button erhält der Spielende weitere Hinweise zur korrekten Antwort
            
            HStack{
                
                CurrentScore()
                    .padding(.trailing, 20)
                
                NavigationLink {
                    InfoView(givenQuiz: givenQuiz)
                }label: {
                    InfoButton()
                        
                }
            }
            .padding(.top, 30)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .environmentObject(players)
        .environmentObject(questions)
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(givenQuiz: Questions().quiz1)
            .environmentObject(Players())
            .environmentObject(Questions())
    }
}

