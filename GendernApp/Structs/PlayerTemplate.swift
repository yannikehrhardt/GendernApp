//
//  PlayerTemplate.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

struct PlayerTemplate {
    
    var id: UUID{
        UUID()
    }
    let username : String
    let password : String
    var currentscore : Int
    var averagescore : Int
    
    init(id: UUID, username: String, password: String, currentscore: Int, averagescore: Int) {
        self.username = username
        self.password = password
        self.currentscore = currentscore
        self.averagescore = averagescore
    }
}
