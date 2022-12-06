//
//  Players.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

var player1 = PlayerTemplate(id: UUID.init(), username: "Yannik", password: "1234", currentscore: 0, averagescore: 0)
var player2 = PlayerTemplate(id: UUID.init(), username: "Hannah", password: "1234", currentscore: 10, averagescore: 10)

var  players : [PlayerTemplate] = [player1, player2]

var currentplayer = player1

 
