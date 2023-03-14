//
//  Players.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

//der Typ ObservableObject sorgt dafür, dass Änderungen an einer mit dem Tag "published" versehenen Variablen ein Neuladen aller Views, die dieses Objekt nutzen erzwungen wird.
class Players : ObservableObject{
    
    //wenn neue Spieler hinzugefügt werden, muss der Initializer von Quiz-Template angepasst werden
    //Konrekt: in QuizTemplate muss das Array der Variable answeredFromPlayer der Anzahl der Spieler entsprechen
    var player1 : PlayerTemplate
    var player2: PlayerTemplate
    
    //s.o.: wenn eine der Variablen verändert wird, laden die Views neu:
    //Array mit allen existierenden Spielern
    @Published var players : [PlayerTemplate]
    
    //Aktueller Spieler: wird für den Score referenziert. Wird beim Einloggen neu gesetzt (in ContentView)
    @Published var currentplayer : PlayerTemplate
    
    init() {
        self.player1 = PlayerTemplate(username: "Yannik", password: "1234", currentscore: 140, admin: true)
        self.player2 = PlayerTemplate(username: "Hannah", password: "1234", currentscore: 140, admin: true)
        self.players = [player1, player2]
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
    
    
    //Score des aktuellen Spielers um 10 erhöhen
    func addScore () -> Void {
        currentplayer.currentscore = currentplayer.currentscore + 10
        
        //Score des aktuellen Spielers ebenfalls erhöhen in players
        if let Offset = players.firstIndex(where: {$0.username == currentplayer.username}){
            
            players[Offset].currentscore += 10
        }
    }
    
    //Reduziert den Score eines Spielers um einen angegebenen Wert
    func reduceScore(amount : Int) -> Void{
        currentplayer.currentscore = currentplayer.currentscore - amount
        players[usernameOffset(currentplayer.username)].currentscore = players[usernameOffset(currentplayer.username)].currentscore - amount
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
    
    //Diese Funktion gibt die Stelle zurück, an der ein übergebener Nutzer im Array players steht
    //wird häufig genutzt um Werte für den entsprechenden Spieler im Array players zu ändern
    func usernameOffset (_ givenusername : String) -> Int {
        if let Offset = players.firstIndex(where: {$0.username == givenusername}){
            return Offset
        }
        else{
            return -1
        }
    }
    
    //wenn ein Spieler eine Quizfrage zum ersten Mal korrekt beantwortet, so wird die id der entsprechenden Quizfrage zum Array der beantworteten Fragen des entsprechenden Spielers hinzugefügt
    //in den Quizauswahl-Views wird die Frage dann mit einem Haken versehen
    func setQuizAnswered(_ givenQuiz : Quiz){
        players[usernameOffset(currentplayer.username)].answered.append(givenQuiz.id)
        currentplayer.answered.append(givenQuiz.id)
    }
    
    //Reicht der aktuelle Spieler eine neue Frage ein, so wird über diese Funktion der createdNewQuestion -Wert auf true gesetzt
    //wird in den Errungenschaften / Badges benötigt
    func createdQuiz(){
        players[usernameOffset(currentplayer.username)].createdNewQuestion = true
    }
    
    //Anzahl der Badges setzen
    func setBadge(givenAmountOfBages : Int){
        players[usernameOffset(currentplayer.username)].badges = givenAmountOfBages
    }
    
    //gibt Offset eines Spielers in einem übergebenen Array aus Spielern zurück
    func returnOffsetInArray(givenPlayerArray : [PlayerTemplate], givenPlayer : PlayerTemplate) -> Int{
        if let Offset = givenPlayerArray.firstIndex(where: {$0.username == givenPlayer.username}){
            return Offset
        }
        else{
            //dieser Fall wurde durch vorherige Bedingungen ausgeschlossen
            return -1
        }
    }
}
