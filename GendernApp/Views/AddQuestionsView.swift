//
//  AddQuestionsView.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 13.12.22.
//

import SwiftUI

struct AddQuestionsView: View {
    @ObservedObject var players: Players
    @State var thema: String = ""
    @State var frage: String = ""
    @State var richtigeAntwort: String = ""
    @State var falscheAntwort1: String = ""
    @State var falscheAntwort2: String = ""
    @State var weitereInformationen: String = ""
    
    var body: some View {
        VStack(spacing: 40){
            
            Text("Fill in the Textfields")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.bottom)
                .padding(.top, 50)
            
            TextField(
                "Please type a topic...", text: $thema)
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
                        
            NavigationLink{
                Themenauswahl(players: players)
            }label: {
                AddQuizButton(text: "")
                    .onTapGesture(count: 1) {
                        UniQuizze.append(Quiz.init(id: UUID.init(), type: "gap text", topic: thema, question: frage, correctAnswer: richtigeAntwort, allAnswers: [richtigeAntwort, falscheAntwort1, falscheAntwort2], answered: false, furtherInformation: weitereInformationen))
                        
                    }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        
    }
}

struct AddQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        AddQuestionsView(players: Players())
    }
}
