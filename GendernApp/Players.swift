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
    
    //s.o.: wenn eine der Variablen verändert wird, laden die Views neu
    @Published var players : [PlayerTemplate]
    @Published var currentplayer : PlayerTemplate
    
    
    init() {
        self.player1 = PlayerTemplate(id: UUID.init(), username: "Yannik", password: "1234", currentscore: 100, averagescore: 0)
        self.player2 = PlayerTemplate(id: UUID.init(), username: "Hannah", password: "1234", currentscore: 10, averagescore: 10)
        self.players = [player1, player2]
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
    
}
