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
    @State private var emptyPassword = false
    
    var body: some View {
        VStack(spacing: 30){
            
            
            Text("Registrierung für die Gender App")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.bottom)
                .padding(.top, 50)
                .shadow(radius: 20)
                .multilineTextAlignment(.center)
          
            //Textfeld in das der Benutzernamen eingegeben werden kann
            TextField("Gib deinen neuen Nutzernamen ein", text: $givenUsername)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 1)
                .disableAutocorrection(true)
            
            
            //Textfeld in das das Passwort eingebeben werden kann
            SecureField("Dein neues Passwort", text: $givenPassword)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 1)
                .disableAutocorrection(true)
                .shadow(
                    color: emptyPassword ? .red : .clear,
                    radius: 5,
                    x: 0.5,
                    y: 0.5)
            
            //Textfeld in das das Passwort eingebeben werden kann
            SecureField("Passwort wiederholen", text: $passwordRetry)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.bottom, 1)
                .disableAutocorrection(true)
                .shadow(
                    color: emptyPassword ? .red : .clear,
                    radius: 5,
                    x: 0.5,
                    y: 0.5)
            
            //mit den hinterlegten Infos wird ein neuer Spieleraccount angelegt
            let newPlayer = PlayerTemplate.init(username: givenUsername, password: givenPassword, currentscore: 0, admin: false)
            
            NewPlayerButton()
                .onTapGesture() {
                    if(givenPassword == ""){
                        self.emptyPassword = true
                    }
                    //Angaben werden auf Korrektheit geprüft. Abhängig davon wird eine Nachricht angezeigt, ob das Erstellen erfolgreich war oder ob fehlerhafte Informationen vorliegen
                    //Korrekte Angaben, wenn eingegebene Passwörter übereinstimmen, das Passwort nicht leer ist und der Username noch verfügbar ist
                    if(givenPassword == passwordRetry && givenPassword != "" && !self.players.usernameAvailable(givenUsername)){
                        players.appendPlayer(newPlayer)
                        self.hiddenFailure = true
                        self.hiddenSuccess = false
                        self.emptyPassword = false
                    }
                    else {
                        self.hiddenFailure = false
                        self.hiddenSuccess = true
                    }
                    
                }
            // wenn Erstellen fehlgeschlagen ist
            if(!self.hiddenFailure) {
                Text("Erstellen fehlgeschlagen! Dein gewählter Nutzername ist bereits vergeben oder die Passwörter stimmten nicht überein.")
            }
            //wenn Erstellen erfolgreich war
            if(!self.hiddenSuccess){
                Text("Dein Account wurde erstellt. Kehre in den Log-In Screen zurück um dich anzumelden!")
            }
        }
        .frame(maxWidth: 350, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        .environmentObject(players)
    }
}


struct PlayerChange_Previews: PreviewProvider {
    static var previews: some View {
        SignUp().environmentObject(Players())
    }
}


