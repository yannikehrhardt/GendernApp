//
//  PlayerTemplate.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//
// In dieser Struct wird die Struktur für einen Player festgelegt

import SwiftUI

struct PlayerTemplate {
    
    var id: UUID
    let username : String
    let password : String
    var currentscore : Int
    //gibt an, ob ein Spieler bereits eine Frage eingereicht hat -> wird im Spielerprofil in den Badges ausgewertet
    var createdNewQuestion : Bool
    
    //gibt an, wie viele Errungenschaften der Spieler bereits erworben hat
    var badges : Int
    
    //gibt an, welche Fragen der Spieler schon beantwortet hat. Wenn ein Spieler die Frage beantwortet hat, so wird die (einzigartige) UUID des beantworteten Quizzes zum Array hinzugefügt
    var answered : [UUID]
    
    //gibt an, ob der Nutzer ein Admin ist
    var admin : Bool
    
    init(username: String, password: String, currentscore: Int, admin: Bool) {
        self.id = UUID.init()
        self.username = username
        self.password = password
        self.currentscore = currentscore
        self.createdNewQuestion = false
        self.badges = 1
        self.answered = []
        self.admin = admin
    }
}
