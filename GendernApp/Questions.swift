//
//  Questions.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

// In diesem File werden die hard gecodeden Quizze angelegt. Alle Quizze werden in einem Array namens quizze gespeichert.

import Foundation
import SwiftUI

class Questions : ObservableObject{
//Uni Quizze
    //Ausführliche und verkürzte Doppelnennung
    let quiz1 = Quiz(type: "gap text" , topic: "Uni", question: "Was ist die korrekte ausführliche Doppelnennung von Studenten?", correctAnswer: ["Studenten und Studentinnen", "", ""], allAnswers: ["Studenten und Studentinnen", "Student/-innen", "StudentInnen"], furtherInformation: "Die ausführliche Doppelnennung erfolgt mit Hilfe unterschiedlicher Konjunktionen odem der Verwendung eines Schrägstrichs. Die verkürzte Doppelnennung, auch Sparschreibung genannt, erfolgt durch Schrägstrich in Kombination mit Bindestrich, durch das Binnenmajuskel, durch den Genderstern, durch den Unterstrich oder durch die Klammern", createdBy: "")
    
    let quiz2 = Quiz(type: "gap text" , topic: "Uni", question: "Wie können alle Geschlechtsidentitäten angesprochen werden?", correctAnswer: ["Student*innen","Student_innen", ""], allAnswers: ["Student*innen", "Student_innen", "Studenten und Studentinnen"], furtherInformation: "Der Stern wird in den letzten Jahren zunehmend verwendet, da das Geschlecht nicht mehr nur als binäres System verstanden wird. Diese Lösung steht allerdings nicht im Einklang mit der amtlichen Orthographie.", createdBy: "")
    
    let quiz3 = Quiz(type: "gap text" , topic: "Uni", question: "Wie kann man Mitarbeiter richtig gendern, um alle Geschlechtsidentitäten anzusprechen?", correctAnswer: ["Mitarbieter_innen", "", ""], allAnswers: ["Mitarbieter_innen","Mitarbeiter und Mitarbeiterinnen", "MitarbeiterInnen"], furtherInformation: "Ähnlich wie das * hat der Unterstrich die Intention, alle existierenden Geschlechter anzusprechen", createdBy: "")
    
    let quiz4 = Quiz(type: "gap text" , topic: "Uni", question: "Welche Berufsbezeichung ist geschlechtsindifferent?", correctAnswer: ["Reinigungskraft", "", ""], allAnswers: ["Reinigungskraft", "Doktorant", "Professor"], furtherInformation: "Reinigungskraft ist geschlechtsindifferent. Sowohl Doktorant als auch Professor beziehen sich nur auf das männliche Geschlecht.", createdBy: "")
    
    let quiz5 = Quiz(type: "gap text" , topic: "Uni", question: "Welche Lösung ist heute unüblich?", correctAnswer: ["Professor[in]", "", ""], allAnswers: ["Professor[in]", "Professor/-in", "Professor und Professorin"],  furtherInformation: "Die Klammerlösung ist zwar amtlich abgesegnet, heute kaum noch üblich, da sie den Eindruck erweckt, die feminine Form sei zweitrangig und weniger wichtig.", createdBy: "")
    
    let quiz6 = Quiz(type: "gap text" , topic: "Uni", question: "Was ist die korrekte ausführliche Doppelnennung von Professoren?", correctAnswer: ["Professoren/Professorinnen", "", ""], allAnswers: ["Professoren/Professorinnen", "Professor*innen", "Professor[innen]"], furtherInformation: "Die ausführliche Doppelnennung erfolgt mit Hilfe unterschiedlicher Konjunktionen odem der Verwendung eines Schrägstrichs. Die verkürzte Doppelnennung, auch Sparschreibung genannt, erfolgt durch Schrägstrich in Kombination mit Bindestrich, durch das Binnenmajuskel, durch den Genderstern, durch den Unterstrich oder durch die Klammern", createdBy: "")
    
    let quiz7 = Quiz(type: "gap text" , topic: "Uni", question: "Welche ist die korrekte Sparschreibung für Doktorant?", correctAnswer: ["Doktorant/-in", "", ""], allAnswers: ["Doktorant/-in", "Doktorant und Doktorantin", "Doktorant/Doktorantin"], furtherInformation: "Durch den Schrägstrich mit Bindestrich können Personenbezeichungen gleichberechtigt und deutlich verkürzt geschrieben werden. Diese Schreibweise ist amtlich. Probleme gibt es mit dieser Schreibweise, wenn die feminine Form mit einem Umlaut gebildet wird. Hierbei kann diese Art der Sparschreibung nicht angewendet werden", createdBy: "")
    
    let quiz8 = Quiz(type: "gap text" , topic: "Uni", question: "Welche Lösung lässt sich der Sparschreibung mit Binnenmajuskel zuordnen?", correctAnswer: ["WirtschaftsinformatikerInnen", "", ""], allAnswers: ["WirtschaftsinformatikerInnen", "Wirtschaftsinformatiker*innen", "Wirtschaftsinformatiker_innen"], furtherInformation: "Binnenmajuskel oder auch Binnen-I wird seit den 1980er Jahren in bestimmten Kontexten verwendet. Ziel des Binnen-I ist es, die Aufmerksamkeit auf die Problematik zu lenken. Bei der Anwenundg dieser Form der Sparschreibung können Probleme im Zusammenhang mit orthografiekonformer Schreibung und der Aussprache entstehen.", createdBy: "")
    
    let quiz9 = Quiz(type: "gap text" , topic: "Uni", question: "Welche Sparschreibung ist nicht üblich?", correctAnswer: ["Wir wollen die Aufmerksamkeit des/-r Leser/-in wecken", "", ""], allAnswers: ["Wir wollen die Aufmerksamkeit des/-r Leser/-in wecken", "Wir suchen einen Professor oder eine Professorin", "Wenden Sie sich bitte an den Doktorant/die Doktorantin"], furtherInformation: "Gibt es keine passende Möglichkeit der Ersetzung oder ist die Sparschreibung zu unübersichtlich, sollte man die ungekürzte Doppelnennung anwenden.", createdBy: "")
    
    let quiz10 = Quiz(type: "gap text", topic: "Uni", question: "Welche Lösung ist amtlich und praxistauglich?" , correctAnswer: ["Kollegen/Kolleginnen", "", ""], allAnswers: ["Kollegen/Kolleginnen", "Kolleg-/-inn/-en", "Kolleg*innen"], furtherInformation: "Kolleg-/-inn/-en ist eine nicht übliche und aus orthografischer und stilistischer Sicht problematische Schreibweise. Die Schreibweise mit dem Genderstern, der Gendergap, dem Binnenmajuskel sind nicht amtlich. Die ausführliche und verkürzte Doppelnennung sind sowohl amtlich als auch praxistausglich. Amtlich ist außerdem die Klammerung.", createdBy: "")
    
    //Ersatzformen
    let quiz11 = Quiz(type: "gap text", topic: "Uni", question: "Was ist eine gute Ersatzform für Student?" , correctAnswer: ["der/die Studierende", "", ""], allAnswers: ["der/die Studierende", "die Studierenden", "der Student/die Studentin"], furtherInformation: "Die richtige Lösung ist in diesem Fall das substantivierte Partizip 1 Singular der/die Studierende.", createdBy: "")
        
    
//SchulQuizze
    let quiz100 = Quiz(type: "gap text" , topic: "Schule", question: "Welche der genannten Lösungen ist heute kaum noch üblich?", correctAnswer: ["Schüler[in]", "", ""], allAnswers: ["Schüler[in]", "Schüler/Schülerin", "Schüler/-in"], furtherInformation: "Die Klammerlösung ist zwar amtlich abgesegnet, heute kaum noch üblich, da sie den Eindruck erweckt, die feminine Form sei zweitrangig und weniger wichtig.", createdBy: "")
    
  
    
    
//AlltagsQuizze
    let quiz200 = Quiz(type: "gap text" , topic: "Alltag", question: "Welche ist die geeignetste Bezeichnung?", correctAnswer: ["Ersatzperson", "", ""], allAnswers: ["Ersatzperson", "Ersatzmann", "Erssatzfrau"], furtherInformation: "In bestimmten Zusammenhängen ist es geeigneter geschlechtsindifferente Formen der Berufs-, Amts- und Funktionsbezeichung zu verwenden.", createdBy: "")
    
    let quiz201 = Quiz(type: "gap text" , topic: "Alltag", question: "Was ist hier korrekte verkürzte Doppelnennung?", correctAnswer: ["Masseur/Masseurin", "", ""], allAnswers: ["Masseur/Masseurin", "Masseur/Masseuse", "Masseure"], furtherInformation: "Bei Masseure handelt es sich nicht und eine Doppelnennung, es wird nur das männliche Geschlecht angesprochen. Masseur/Masseuse ist nicht korrekte, da Masseuse heute meist die Bedeutung >Prostituierte in einem Massagesalon< hat.", createdBy: "")
    
    
    let quiz400 = Quiz(type: "gap text", topic: "Uni", question: "Testfrage zu überprüfen", correctAnswer: ["korrekt","",""], allAnswers: ["falsch", "falsch", "korrekt"], furtherInformation: "weil, du opfer", createdBy: "test")
    let quiz401 = Quiz(type: "gap text", topic: "Schule", question: "Testfrage zu überprüfen2", correctAnswer: ["korrekt2","",""], allAnswers: ["falsch", "falsch", "korrekt"], furtherInformation: "weil, du opfer", createdBy: "test")
    
    @Published var quizze : [Quiz] //alle Quizze
    @Published var UniQuizze : [Quiz]   //Array mit allen Quizzen der Kategorie Uni
    @Published var SchuleQuizze : [Quiz]  //Array mit allen Quizzen der Kategorie Schule
    @Published var AlltagQuizze : [Quiz]  //Array mit allen Quizzen der Kategorie Alltag
    @Published var toBeTested : [Quiz]   //Array mit Quizzen, die durch Admins bestätigt werden müssen
    
    init() {
        quizze = [quiz1, quiz2, quiz3, quiz4, quiz5, quiz6, quiz7, quiz8, quiz9, quiz10, quiz11, quiz100, quiz200, quiz201]
        UniQuizze = [quiz1, quiz2, quiz3, quiz4, quiz5, quiz6, quiz7, quiz8, quiz9, quiz10, quiz11]
        SchuleQuizze = [quiz100]
        AlltagQuizze = [quiz200, quiz201]
        toBeTested = [quiz400, quiz401]
    }
    
    func addQuizze(_ givenTopic : String) -> [Quiz] { //Diese Funktion sortiert die Quizze im Array quizze in den passenden Array mit dem entprechend angegebenen Topic ein
        var solution : [Quiz] = []
        for element in quizze {
            if (element.topic == givenTopic){
                solution.append(element)
            }
        }
        return solution
    }
    
    //Offset eines Quizes im Array quizze
    func getQuizOffset(_ givenQuiz : Quiz, whichQuiz: String) -> Int {
        if(whichQuiz == "quizze"){
            if let Offset = self.quizze.firstIndex(where: {$0.id == givenQuiz.id}){
                return Offset
            }
        }
        
        if(whichQuiz == "toBeTested"){
            if let Offset = self.toBeTested.firstIndex(where: {$0.id == givenQuiz.id}){
                return Offset
            }
        }
        
        //else sollte nicht benötigt werden, wenn der Aufruf dann erfolgt, wenn klar ist, dass das übergebene Quiz exisitert.
        else{
            return -1
        }
        return -1
    }
    
    //prüft, ob eine gegebene Frage bereits gestellt wurde
    func questionAvailable(_ givenQuiz : Quiz) -> Bool {
        var available = true
        for quiz in quizze{
            if(quiz.question == givenQuiz.question){
                if(quiz.allAnswers == givenQuiz.allAnswers){
                    available = false
                    break
                }
            }
        }
        return available
    }
    
    func addCorrectAnswered(_ givenQuiz : Quiz){
        let offset = getQuizOffset(givenQuiz, whichQuiz: "quizze")
        quizze[offset].correctlySelectedAnswers += 1
    }
    
    //Problematik: das correctAnswer Array umfasst neben den richtigen Quizantworten auch leere Strings (""), da die Länge des Arrays immer drei entspricht (Anzahl aller Antwortmöglichkeiten)
    //Diese Funktion zählt alle korrekten Antworten in correctAnswer und beachtet dabei leere Strings nicht
    func numberOfCorrectAnswers(_ givenQuiz : Quiz) -> Int {
        let offset = getQuizOffset(givenQuiz, whichQuiz: "quizze")
        var amount = 0
        for answer in quizze[offset].correctAnswer {
            if(answer != ""){
                amount += 1
            }
        }
        return amount
    }

    
}




