//
//  CreateBagdes.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 19.01.23.
//

import SwiftUI

struct CreateBagdes: View {
    @EnvironmentObject var players : Players
    @EnvironmentObject var questions : Questions
    
    //Anzahl an Badges
    @State var count = 1
    var body: some View {
        //Listet alle Errungenschaften auf, die der Spieler bereits verdient hat
        Text("Diese Errungenschaften hast du bereits verdient:")
        List{
            HStack{
                Image(systemName: "person.fill.checkmark")
                Text("Erstelle einen Nutzendenaccount")
            }
            
            if(players.players[players.usernameOffset(players.currentplayer.username)].answered.count >= 1){
                HStack{
                    Image(systemName: "1.circle")
                    Text("Beantworte mindestens eine Frage")
                }
                .onAppear(){
                    count+=1
                    players.setBadge(givenAmountOfBages: count)
                }
            }
            
            if(players.players[players.usernameOffset(players.currentplayer.username)].createdNewQuestion == true){
                HStack{
                    Image(systemName: "folder.fill.badge.plus")
                    Text("Füge mindestens eine neue Frage hinzu")
                }
                .onAppear(){
                    count+=1
                    players.setBadge(givenAmountOfBages: count)
                }
            }
            
            if((players.players[players.usernameOffset(players.currentplayer.username)].answered.count / questions.quizze.count) * 100 >= 50){
                HStack{
                    Image(systemName: "battery.50")
                    Text("Du hast bereits 50% aller Fragen korrekt beantwortet")
                }
                .onAppear(){
                    count+=1
                    players.setBadge(givenAmountOfBages: count)
                }
            }
            
            if(players.players[players.usernameOffset(players.currentplayer.username)].answered.count == questions.quizze.count){
                HStack{
                    Image(systemName: "medal")
                    Text("Einfach durchgespielt: Alle Fragen wurden korrekt beantwortet")
                }
                .onAppear(){
                    count+=1
                    players.setBadge(givenAmountOfBages: count)
                }
            }
        }
        
        //Listet alle Errungenschaften auf, die dem Spieler noch fehlen
        Text("Diese Errungenschaften fehlen dir noch:")
        List{
            
            if(players.players[players.usernameOffset(players.currentplayer.username)].answered.count == 0){
                HStack{
                    Image(systemName: "1.circle")
                    Text("Beantworte mindestens eine Frage")
                }
            }
            
            if(players.players[players.usernameOffset(players.currentplayer.username)].createdNewQuestion == false){
                HStack{
                    Image(systemName: "folder.fill.badge.plus")
                    Text("Füge mindestens eine neue Frage hinzu")
                }
            }
            
            if((players.players[players.usernameOffset(players.currentplayer.username)].answered.count / questions.quizze.count) * 100 < 50){
                HStack{
                    Image(systemName: "battery.50")
                    Text("Du hast bereits 50% aller Fragen korrekt beantwortet")
                }
            }
            
            if(players.players[players.usernameOffset(players.currentplayer.username)].answered.count != questions.quizze.count){
                HStack{
                    Image(systemName: "medal")
                    Text("Einfach durchgespielt: Alle Fragen wurden korrekt beantwortet")
                }
            }
            
        }
    }
}
