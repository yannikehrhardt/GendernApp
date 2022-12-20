//
//  ContentView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 01.11.22.
//

import SwiftUI


struct ContentView: View {
    //hier wird der Typ Players mit den entsprechenden Variablen initialisiert und muss dann an die entsprechenden Screens weitergegeben werden
    @StateObject var players = Players()
    @State var givenusername : String
    @State var givenpassword : String
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                VStack(spacing: 20){
                    Image("Genderzeichen 1")
                    Text("GendernApp")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("TextColor"))
                    Text("Gendern lernen leicht gemacht")
                        .foregroundColor(Color("TextColor"))
                }
                
                TextField("Username", text: $givenusername)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 1)
                SecureField("Password", text: $givenpassword)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 1)
                
                NavigationLink {
                    if(self.players.players[self.players.usernameUnavailable(givenusername)].password == givenpassword){
                        Themenauswahl()
                            .onAppear(){
                                self.players.setCurrentPlayer(self.players.usernameUnavailable(givenusername))
                            }
                    }
                    
                    //else mit Fehlerausgabe
                    //currentuser wechseln
                    
                }label: {
                    PlayButton(text: "Log In", players: self.players)
                }
                
                Text("or")
                    .foregroundColor(Color("TextColor"))                
                NavigationLink{
                    PlayerChange()
                } label:{
                    SignUp()
                }
                
                NavigationLink{
                    AddQuestionsView(players: self.players)
                }label: { AddQuizButton()
                }
                .padding(.top)
                
            }
                
            .frame(maxWidth: 300, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
        }
        .environmentObject(players)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(givenusername: "", givenpassword: "")
    }

}
