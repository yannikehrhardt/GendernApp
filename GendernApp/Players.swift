//
//  Players.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

var player1 = PlayerTemplate(id: UUID.init(), username: "Yannik", password: "1234", currentscore: 100, averagescore: 0)
var player2 = PlayerTemplate(id: UUID.init(), username: "Hannah", password: "1234", currentscore: 10, averagescore: 10)
var  players : [PlayerTemplate] = [player1, player2]
var currentplayer = player1



func appendPlayer(_ Player: PlayerTemplate) -> Void {
    players.append(Player)
}

func addScore () -> Void {
    currentplayer.currentscore = currentplayer.currentscore + 10
}
 
