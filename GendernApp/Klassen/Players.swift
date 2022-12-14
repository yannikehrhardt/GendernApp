//
//  Players.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

//der Typ ObservableObject sorgt dafür, dass Änderungen an einer mit dem Tag "published" versehenen Variablen ein Neuladen aller Views, die dieses Objekt nutzen erzwungen wird
class Players : ObservableObject{
    
    //wenn neue Spieler hinzugefügt werden, muss der Initializer von Quiz-Template angepasst werden
    //Konrekt: in QuizTemplate muss das Array der Variable answeredFromPlayer der Anzahl der Spieler entsprechen
    var player1 : PlayerTemplate
    var player2: PlayerTemplate
    var player3: PlayerTemplate
    var player4: PlayerTemplate
    
    //s.o.: wenn eine der Variablen verändert wird, laden die Views neu:
    
    //Array mit allen existierenden Spielern
    @Published var players : [PlayerTemplate]
    
    //Aktueller Spieler: wird für den Score referenziert. Wird beim Einloggen neu gesetzt (in ContentView)
    @Published var currentplayer : PlayerTemplate
    
    
    //
    
    init() {
        self.player1 = PlayerTemplate(id: UUID.init(), username: "Yannik", password: "1234", currentscore: 100, averagescore: 0)
        self.player2 = PlayerTemplate(id: UUID.init(), username: "Hannah", password: "1234", currentscore: 10, averagescore: 10)
        self.player3 = PlayerTemplate(id: UUID.init(), username: "1", password: "1", currentscore: 5, averagescore: 10)
        self.player4 = PlayerTemplate(id: UUID.init(), username: "", password: "", currentscore: 7, averagescore: 10)
        self.players = [player1, player2, player3, player4]
        self.currentplayer = player1
    }

    
    
    //Neuen Spieler anfügen
    func appendPlayer(_ newPlayer: PlayerTemplate) -> Void {
        players.append(newPlayer)
    }
    
    //Aktuellen Player setzen
    func setCurrentPlayer(_ offset : Int) -> Void {
        self.currentplayer = players[offset]
    }
    
    
    //Score des aktuellen Spielers erhöhen
    func addScore () -> Void {
        currentplayer.currentscore = currentplayer.currentscore + 10
        
        //Score des aktuellen Spielers ebenfalls erhöhen in players
        if let Offset = players.firstIndex(where: {$0.username == currentplayer.username}){
            
            players[Offset].currentscore += 10
        }
    }
    
    //Prüft, ob ein Username vergeben ist. Wenn ja, wird true zurückgegeben.
    func usernameAvailable (_ givenusername: String) -> Bool {
        var correct = false
        for player in self.players{
            if (player.username == givenusername){
                correct = true
                break
            }
        }
        return correct
    }
    
    //prüft, ob das übergebene Passwort zu dem übergebenen Nutzeraccount passt
    func usernameOffset (_ givenusername : String) -> Int {
        if let Offset = players.firstIndex(where: {$0.username == givenusername}){
            return Offset
        }
        else{
            return -1
        }
    }
}
