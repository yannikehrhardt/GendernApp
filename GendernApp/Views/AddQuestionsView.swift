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
    let themaOptions = ["Option wählen" ,"Uni", "Schule", "Alltag"]
    @State var thema: String = ""
    @State var frage: String = ""
    @State var richtigeAntwort: String = ""
    @State var falscheAntwort1: String = ""
    @State var falscheAntwort2: String = ""
    @State var weitereInformationen: String = ""
    @State private var hiddenFailure = true
    @State private var hiddenSuccess = true
    @State private var isSelected = false
    
    var body: some View {
        VStack(spacing: 30){
            
            Text("Lege ein eigenes Quiz an!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.bottom)
                .padding(.top, 50)
            
            HStack{
                Text("Wähle ein Thema")
                    .font(.body)
                    .background(Color.white)
                    .multilineTextAlignment(.leading)
                    .cornerRadius(5.0)
                    .padding(.bottom, 1)
                    .disableAutocorrection(true)
                
                Spacer()
                
                Picker("Wähle ein Thema", selection: $thema) {
                    ForEach(themaOptions, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(.menu)
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 1)
            }
            .frame(width: 320)
            .padding()
            .background(Color.white)
            .cornerRadius(5.0)
            
            
            
            TextField(
                "Formuliere eine Frage...", text: $frage)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 1)
                .disableAutocorrection(true)
            
            TextField(
                "Korrekte Antwort...", text: $richtigeAntwort)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 1)
                .disableAutocorrection(true)
            
            TextField(
                "Erste falsche Antwort...", text: $falscheAntwort1)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 1)
                .disableAutocorrection(true)
            
            TextField(
                "Zweite falsche Antwort...", text: $falscheAntwort2)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 1)
                .disableAutocorrection(true)
            
            TextField(
                "Erklärung...", text: $weitereInformationen)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 1)
                .disableAutocorrection(true)
            
            //neues Quiz mit den eingegebenen Infos erstellen
            let quizNew = Quiz.init(type: "gap text", topic: thema, question: frage, correctAnswer: [richtigeAntwort, "", ""], allAnswers: [richtigeAntwort, falscheAntwort1, falscheAntwort2], furtherInformation: weitereInformationen)
            
            AddQuizButton()
                //
                .shadow(color: isSelected && (thema == "Uni" || thema == "Schule" || thema == "Alltag") ? .green : .red, radius: 5, x: 0.5, y: 0.5)
                .onTapGesture() {
                    
                    isSelected = true
                    
                    if(thema != "" && frage != "" && richtigeAntwort != "" && falscheAntwort1 != "" && falscheAntwort2 != "" && weitereInformationen != "" && questions.questionAvailable(quizNew)){
                        
                        //wenn alle Bedingungen an die Quizfrage erfüllt sind, wird das Quiz in das Array zu prüfender Quizfragen einsortiert, sobald ein Administrator das Quiz bestätigt ist es in der App für jeden zu finden
                        questions.quizze.append(quizNew)
                        players.createdQuiz()
                        
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
                        
                        self.hiddenSuccess = false
                        self.hiddenFailure = true
                    }
                    else {
                        self.hiddenFailure = false
                        self.hiddenSuccess = true
                        
                    }
                }
            
            if (self.hiddenFailure == false) {
                Text("Falsche Eingaben: Deine neue Quizfrage wurde nicht erstellt. Versuche es erneut.")
            }   
            if(!self.hiddenSuccess){
                Text("Dein Quizfrage wurde erfolgreich erstellt.")
            }
            
        }
        .frame(maxWidth: 350, maxHeight: .infinity)
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
