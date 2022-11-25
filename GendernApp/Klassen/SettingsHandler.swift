//
//  SettingsHandler.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 01.11.22.
//

import Foundation

//Diese Klasse setzt die Schwierigkeit und Thema fest
//Wir sollten uns genau Bezeichnungen/Nummern für die Themenbereiche und Schwierigkeiten überlegen
//In der "Hauptklasse" initieren wir dann ein neues Objekt eines SettingsHandlers
//Beim Nutzen von Buttons muss mit unter dann das Thema und die Schwierigkeit verändert werden
//Anahnd der beiden Werte können wir dann die entsprechenden Quizfragen beziehen

class SettingsHandler{
    private var difficulty = 0
    private var topic = 0


   func setDifficulty(_ newDifficulty : Int) -> Void {
       //es kann sein, dass wir hier noch ein self. vornedran setzen müssen, vgl:
       //https://stackoverflow.com/questions/49253299/cannot-assign-to-property-self-is-immutable-i-know-how-to-fix-but-needs-unde
       difficulty = newDifficulty
   }
   
   func getDifficulty() -> Int {
       return difficulty
   }
    
    func setTopic(_ newTopic : Int) -> Void {
        topic = newTopic
    }
    
    func getTopic() -> Int{
        return topic
    }
    
    
}

