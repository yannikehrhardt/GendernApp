//
//  Players.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

class Players : ObservableObject{
    
    var player1 : PlayerTemplate
    var player2: PlayerTemplate
    @Published var players : [PlayerTemplate]
    @Published var currentplayer : PlayerTemplate
    
    
    init() {
        self.player1 = PlayerTemplate(id: UUID.init(), username: "Yannik", password: "1234", currentscore: 100, averagescore: 0)
        self.player2 = PlayerTemplate(id: UUID.init(), username: "Hannah", password: "1234", currentscore: 10, averagescore: 10)
        self.players = [player1, player2]
        self.currentplayer = player1
    }

    
    
    
    func appendPlayer(_ Player: PlayerTemplate) -> Void {
        players.append(Player)
    }
    
    //ggf. muss ich den Score auch in players anpassen
    func addScore () -> Void {
        currentplayer.currentscore = currentplayer.currentscore + 10
    }
    
}
