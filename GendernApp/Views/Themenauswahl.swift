//
//  Themenauswahl.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

import SwiftUI

struct Themenauswahl: View {
    @EnvironmentObject var players: Players
    @EnvironmentObject var questions : Questions
    @EnvironmentObject var rules: Rules
    
    var givenUsername : String
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Wähle ein Thema!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.bottom)
                .padding(.top, 50)
                .shadow(radius: 20)
            
            Image(systemName: "gamecontroller")
                .font(.system(size: 30))
            
            NavigationLink{
                Quizauswahl_Universitat()
            }label: {
                UniversityButton()
            }
            
            NavigationLink{
                Quizauswahl_Schule()
            }label: {
                SchuleButton()
            }
            
            NavigationLink{
                Quizauswahl_Alltag()
            }label: {
                AlltagButton()
            }
            
            Image(systemName: "gamecontroller")
                .font(.system(size: 30))
            
//            CurrentScore()
//                .padding(.top, 10)
            
            HStack{
                NavigationLink{
                    ScoreView()
                } label: {
                    ScoreViewButton()
                        .padding(.trailing, 20.0)
                }
                .padding(.trailing, 0)
                
                NavigationLink{
                    GeneralGenderInfo()
                } label: {
                    GeneralGenderInfoButton()
                }
                .padding(.trailing, 20)
                
                NavigationLink{
                    AddQuestionsView()
                }label: {
                    AddQuizButton()
                }
                
                
            }
            .padding(.top)
            
        }

        .frame(maxWidth: 300, maxHeight: .infinity)
        .background(Image("Backgrounds App"))

        
        
        //wenn der Screen aufgerufen wird, wird der aktuelle Spieler gesetzt
        .onAppear(){
            self.players.setCurrentPlayer(self.players.usernameOffset(self.givenUsername))
        }
        .environmentObject(players)
        .environmentObject(questions)
        .environmentObject(rules)
        .accentColor(.black)
    }
}

struct Themenauswahl_Previews: PreviewProvider {
    static var previews: some View {
        Themenauswahl(givenUsername: "Yannik")
            .environmentObject(Players())
            .environmentObject(Questions())
            .environmentObject(Rules())
    }
}

// Darstellung der Buttons verändern --> größer machen
