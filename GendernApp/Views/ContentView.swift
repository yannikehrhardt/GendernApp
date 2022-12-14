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
            VStack(spacing: 40) {
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
                    if(self.players.usernameUnavailable(givenusername) && self.players.passwordCorrect(givenusername: self.givenusername, givenpassword: self.givenpassword)){
                        Themenauswahl(players: self.players)
                    }
                }label: {
                    PlayButton(text: "Log In", players: self.players)
                }
                
                Text("or")
                    .foregroundColor(Color("TextColor"))
                    .onAppear(){
                        //players.self.addScore()
                        self.players.addScore()
                    }
                
                NavigationLink{
                    PlayerChange()
                } label:{
                    OtherPlayer()
                }
                }
                
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(givenusername: "", givenpassword: "")
    }

}
