//
//  PlayerTemplate.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

struct PlayerTemplate {
    
    var id: UUID
    let username : String
    let password : String
    var currentscore : Int
    var averagescore : Int
    //gibt an, ob ein Spieler bereits eine Frage eingereicht hat -> wird im Spielerprofil in den Badges ausgewertet
    var createdNewQuestion : Bool
    
    //gibt an, welche Fragen der Spieler schon beantwortet hat. Wenn ein Spieler die Frage beantwortet hat, so wird die (einzigartige) UUID des beantworteten Quizzes zum Array hinzugefügt
    var answered : [UUID]
    
    init(username: String, password: String, currentscore: Int, averagescore: Int) {
        self.id = UUID.init()
        self.username = username
        self.password = password
        self.currentscore = currentscore
        self.averagescore = averagescore
        self.createdNewQuestion = false
        self.answered = []
    }
}
