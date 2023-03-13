//
//  ContentView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 01.11.22.
//

import SwiftUI


struct ContentView: View {
    //hier wird der Typ Players mit den entsprechenden Variablen initialisiert und muss dann (unten) an die entsprechenden Screens weitergegeben werden
    //StateObject sorgt dafür, dass alle Screens neu geladen werden, wenn sich Variablen dieses Structs verändern
    @StateObject var players = Players()
    
    //hier wird der Typ Questions mit den entsprechenden Variablen initialisiert und wird dann (unten) an die Screens weitergegeben
    @StateObject var questions = Questions()
    
    //hier wird der Typ Rules mit den entsprechenden Variablen initialisiert und wird dann (unten) an die Screens weitergegeben
    @StateObject var rules = Rules()
    
    @State var givenusername : String
    @State var givenpassword : String
    
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                    
                    Image("Genderzeichen 1")
                    
                    Text("GendernApp")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("TextColor"))
                    
                    Text("Gendern lernen leicht gemacht")
                        .foregroundColor(Color("TextColor"))
                
                
                //Textfeld für den Benutzernamen
                TextField("Benutzername", text: $givenusername)
                    .padding()
                    .background(Color("Color 1"))
                    .cornerRadius(5.0)
                    .disableAutocorrection(true)
                
                //Textfeld bzw. SecureFeld der die Eingabe (verdeckt für das Passwort)
                SecureField("Passwort", text: $givenpassword)
                    .padding()
                    .background(Color("Color 1"))
                    .cornerRadius(5.0)
                    .disableAutocorrection(true)
                
                NavigationLink {
                    //nur, wenn der Nutzername vergeben ist, kann geprüft werden, ob das zugehörige Passwort ebenfalls stimmt. Die erste if-Abfrage schließt somit eine Out-of-Bounds Exception aus
                    if(self.players.usernameAvailable(givenusername)){
                        if(self.players.players[self.players.usernameOffset(givenusername)]
                            .password == givenpassword){
                            
                            //nur wenn PW und Nutzername korrekt ist, wird auf das Hauptmenü aufgerufen, dort wird dann der aktuelle Spieler gesetzt
                            Themenauswahl(givenUsername: givenusername)
                        }
                        //stimmt das PW nicht, so wird ein Screen angezeigt, dass das PW oder ner Nutzername nicht korrekt war
                        else{
                            Text("wrong password or username, try again or sign up")
                        }
                    }
                    else{
                        Text("wrong password or username, try again or sign up")
                    }
                }label: {
                    PlayButton()
                }
                
               Text("oder")
                .foregroundColor(Color("TextColor"))
                
                //Button zum Sign-Up-Screen
                NavigationLink{
                    SignUp()
                } label:{
                    SignUpButton()
                }
            }
            .frame(maxWidth: 350, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
            
        }
        //weitergeben
        .environmentObject(players)
        .environmentObject(questions)
        .environmentObject(rules)
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(givenusername: "", givenpassword: "")
    }

}
