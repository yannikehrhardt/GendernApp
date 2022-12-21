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
    
    //hier wird der Typ Questions mit den entsprechenden Variablen initialisiert und wird dann an die Screens weitergegeben
    @StateObject var questions = Questions()
    
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
                //Textfeld für den Benutzernamen
                TextField("Username", text: $givenusername)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 1)
                    .disableAutocorrection(true)
                
                //Textfeld bzw. SecureFeld der die Eingabe verdeckt für das Passwort
                SecureField("Password", text: $givenpassword)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 1)
                    .disableAutocorrection(true)
                
                NavigationLink {
                    
                    //nur, wenn der Nutzername vergeben ist, kann geprüft werden, ob das zugehörige Passwort ebenfalls stimmt. Die erste if-Abfrage schließt somit eine Out-of-Bounds Exception aus
                    if(self.players.usernameAvailable(givenusername)){
                        if(self.players.players[self.players.usernameOffset(givenusername)]
                            .password == givenpassword){
                            Themenauswahl()
                            //.onAppear(){
                            //
                            //
                            //}
                        }
                        //stimmt das PW nicht, so wird
                        else{
                            Text("wrong password or username, try again or sign up")
                        }
                        
                    
                    }
                    else{
                        Text("wrong password or username, try again or sign up")
                    }
                }label: {
                    PlayButton(text: "Log In", players: self.players)
                        .onTapGesture {
                            if(self.players.usernameAvailable(givenusername)){
                                if(self.players.players[self.players.usernameOffset(givenusername)]
                                    .password == givenpassword){
                                    self.players.setCurrentPlayer(self.players.usernameOffset(givenusername))
                                }
                            }
                            else {
                                Text("wrong password or username, try again or sign up")
                            }
                        }
                }
                
                Text("or")
                    .foregroundColor(Color("TextColor"))                
                NavigationLink{
                    SignUp()
                } label:{
                    SignUpButton()
                }
                
                
            }
                
            .frame(maxWidth: 300, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
        }
        .environmentObject(players)
        .environmentObject(questions)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(givenusername: "", givenpassword: "")
    }

}
