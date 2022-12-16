//
//  Players.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

//der Typ ObservableObject sorgt dafür, dass Änderungen an einer mit dem Tag "published" versehenen Variablen ein Neuladen aller Views, die dieses Objekt nutzen erzwungen wird
class Players : ObservableObject{
    
    var player1 : PlayerTemplate
    var player2: PlayerTemplate
    var player3: PlayerTemplate
    var player4: PlayerTemplate
    
    //s.o.: wenn eine der Variablen verändert wird, laden die Views neu
    @Published var players : [PlayerTemplate]
    @Published var currentplayer : PlayerTemplate
    
   // public static var shared : Players = Players()
    
    
    init() {
        self.player1 = PlayerTemplate(id: UUID.init(), username: "Yannik", password: "1234", currentscore: 100, averagescore: 0)
        self.player2 = PlayerTemplate(id: UUID.init(), username: "Hannah", password: "1234", currentscore: 10, averagescore: 10)
        self.player3 = PlayerTemplate(id: UUID.init(), username: "1", password: "1", currentscore: 10, averagescore: 10)
        self.player4 = PlayerTemplate(id: UUID.init(), username: "", password: "", currentscore: 10, averagescore: 10)
        self.players = [player1, player2, player3, player4]
        self.currentplayer = player1
    }

    
    
    //Neuen Spieler anfügen
    func appendPlayer(_ newPlayer: PlayerTemplate) -> Void {
        players.append(newPlayer)
    }
    
    //Aktuellen Player setzen
    func setCurrentPlayer(_ changedPlayer: PlayerTemplate) -> Void {
        self.currentplayer = changedPlayer
    }
    
    //Score des aktuellen Spielers erhöhen
    func addScore () -> Void {
        currentplayer.currentscore = currentplayer.currentscore + 10
    }
    
    //Prüft, ob ein Username vergeben ist. Wenn ja, wird true zurückgegeben.
    func usernameUnavailable (_ givenusername: String) -> Bool {
        var contained = false
        for player in self.players{
            if (player.username == givenusername){
                contained = true
                break
            }
        }
        return contained
    }
    
    //prüft, ob das übergebene Passwort zu dem übergebenen Nutzeraccount passt
    func passwordCorrect (givenusername : String, givenpassword: String) -> Bool {
        return true
    }
}
