//
//  PlayerChange.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

struct SignUp: View {
    @EnvironmentObject var players: Players
    @State var givenUsername = ""
    @State var givenPassword = ""
    @State var passwordRetry = ""
    @State private var hiddenFailure = true
    @State private var hiddenSuccess = true
    
    var body: some View {
        VStack(spacing: 30){
            
            
            Text("Let‘s create a new player account!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.bottom)
                .padding(.top, 50)
                .shadow(radius: 20)
            
            TextField(
                "Type in your new username", text: $givenUsername)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Set a password", text: $givenPassword)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Type in your password again", text: $passwordRetry)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            
            let newPlayer = PlayerTemplate.init(username: givenUsername, password: givenPassword, currentscore: 0)
            
            
            NewPlayerButton()
                .onTapGesture() {
                    
                    
                    if(givenPassword == passwordRetry && givenPassword != "" && !self.players.usernameAvailable(givenUsername)){
                        players.appendPlayer(newPlayer)
                        self.hiddenFailure = true
                        self.hiddenSuccess = false
                    }
                    else {
                        self.hiddenFailure = false
                        self.hiddenSuccess = true
                    }
                    
                }
                
            if (self.hiddenFailure == false) {
                Text("Falsche Eingaben: Benutzer wurde nicht erstellt. Versuche es erneut")
            }
            if (!self.hiddenSuccess){
                Text("Dein Account wurde erstellt. Kehre in den Log-In Screen zurück um dich anzumelden")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .environmentObject(players)
    }
}


struct PlayerChange_Previews: PreviewProvider {
    static var previews: some View {
        SignUp().environmentObject(Players())
    }
}


