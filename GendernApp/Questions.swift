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
    let quiz1 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Was ist die korrekte ausführliche Doppelnennung von Studenten?", correctAnswer: "Studenten und Studentinnen", allAnswers: ["Studenten und Studentinnen", "Student/-innen", "StudentInnen"], answered: [], furtherInformation: "Die ausführliche Doppelnennung erfolgt mit Hilfe unterschiedlicher Konjunktionen odem der Verwendung eines Schrägstrichs. Die verkürzte Doppelnennung, auch Sparschreibung genannt, erfolgt durch Schrägstrich in Kombination mit Bindestrich, durch das Binnenmajuskel, durch den Genderstern, durch den Unterstrich oder durch die Klammern")
    
    let quiz2 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Wie können alle Geschlechtsidentitäten angesprochen werden?", correctAnswer: "Student*innen", allAnswers: ["Student*innen", "StudentIinnen", "Studenten und Studentinnen"], answered: [], furtherInformation: "Der Stern wird in den letzten Jahren zunehmend verwendet, da das Geschlecht nicht mehr nur als binäres System verstanden wird. Diese Lösung steht allerdings nicht im Einklang mit der amtlichen Orthographie.")
    
    let quiz3 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Wie kann man Mitarbeiter richtig gendern, um alle Geschlechtsidentitäten anzusprechen?", correctAnswer: "Mitarbieter_innen", allAnswers: ["Mitarbieter_innen","Mitarbeiter und Mitarbeiterinnen", "MitarbeiterInnen"], answered: [], furtherInformation: "Ähnlich wie das * hat der Unterstrich die Intention, alle existierenden Geschlechter anzusprechen")
    
    let quiz4 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Welche Berufsbezeichung ist geschlechtsindifferent?", correctAnswer: "Reinigungskraft", allAnswers: ["Reinigungskraft", "Doktorant", "Professor"], answered: [], furtherInformation: "Reinigungskraft ist geschlechtsindifferent. Sowohl Doktorant als auch Professor beziehen sich nur auf das männliche Geschlecht.")
    
    let quiz5 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Welche Lösung ist heute unüblich?", correctAnswer: "Professor[in]", allAnswers: ["Professor[in]", "Professor/-in", "Professor und Professorin"], answered: [], furtherInformation: "Die Klammerlösung ist zwar amtlich abgesegnet, heute kaum noch üblich, da sie den Eindruck erweckt, die feminine Form sei zweitrangig und weniger wichtig.")
    
    let quiz6 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Was ist die korrekte ausführliche Doppelnennung von Professoren?", correctAnswer: "Professoren/Professorinnen", allAnswers: ["Professoren/Professorinnen", "Professor*innen", "Professor[innen]"], answered: [], furtherInformation: "Die ausführliche Doppelnennung erfolgt mit Hilfe unterschiedlicher Konjunktionen odem der Verwendung eines Schrägstrichs. Die verkürzte Doppelnennung, auch Sparschreibung genannt, erfolgt durch Schrägstrich in Kombination mit Bindestrich, durch das Binnenmajuskel, durch den Genderstern, durch den Unterstrich oder durch die Klammern")
    
    let quiz7 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Welche ist die korrekte Sparschreibung für Doktorant?", correctAnswer: "Doktorant/-in", allAnswers: ["Doktorant/-in", "Doktorant und Doktorantin", "Doktorant/Doktorantin"], answered: [], furtherInformation: "Durch den Schrägstrich mit Bindestrich können Personenbezeichungen gleichberechtigt und deutlich verkürzt geschrieben werden. Diese Schreibweise ist amtlich. Probleme gibt es mit dieser Schreibweise, wenn die feminine Form mit einem Umlaut gebildet wird. Hierbei kann diese Art der Sparschreibung nicht angewendet werden")
    
    let quiz8 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Welche Lösung lässt sich der Sparschreibung mit Binnenmajuskel zuordnen?", correctAnswer: "WirtschaftsinformatikerInnen", allAnswers: ["WirtschaftsinformatikerInnen", "Wirtschaftsinformatiker*innen", "Wirtschaftsinformatiker_innen"], answered: [], furtherInformation: "Binnenmajuskel oder auch Binnen-I wird seit den 1980er Jahren in bestimmten Kontexten verwendet. Ziel des Binnen-I ist es, die Aufmerksamkeit auf die Problematik zu lenken. Bei der Anwenundg dieser Form der Sparschreibung können Probleme im Zusammenhang mit orthografiekonformer Schreibung und der Aussprache entstehen.")
    
    let quiz9 = Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "Welche Sparschreibung ist nicht üblich?", correctAnswer: "Wir wollen die Aufmerksamkeit des/-r Leser/-in wecken", allAnswers: ["Wir wollen die Aufmerksamkeit des/-r Leser/-in wecken", "Wir suchen einen Professor oder eine Professorin", "Wenden Sie sich bitte an den Doktorant/die Doktorantin"], answered: [], furtherInformation: "Gibt es keine passende Möglichkeit der Ersetzung oder ist die Sparschreibung zu unübersichtlich, sollte man die ungekürzte Doppelnennung anwenden.")
    
    let quiz10 = Quiz(id: UUID.init(), type: "gap text", topic: "Uni", question: "Welche Lösung ist amtlich und praxistauglich?" , correctAnswer: "Kollegen/Kolleginnen", allAnswers: ["Kollegen/Kolleginnen", "Kolleg-/-inn/-en", "Kolleg*innen"], answered: [], furtherInformation: "Kolleg-/-inn/-en ist eine nicht übliche und aus orthografischer und stilistischer Sicht problematische Schreibweise. Die Schreibweise mit dem Genderstern, der Gendergap, dem Binnenmajuskel sind nicht amtlich. Die ausführliche und verkürzte Doppelnennung sind sowohl amtlich als auch praxistausglich. Amtlich ist außerdem die Klammerung.")
    
    //Ersatzformen
    let quiz11 = Quiz(id: UUID.init(), type: "gap text", topic: "Uni", question: "Was ist eine gute Ersatzform für Student?" , correctAnswer: "der/die Studierende", allAnswers: ["der/die Studierende", "die Studierenden", "der Student/die Studentin"], answered: [], furtherInformation: "Die richtige Lösung ist in diesem Fall das substantivierte Partizip 1 Singular der/die Studierende.")
        
    
//SchulQuizze
    let quiz100 = Quiz(id: UUID.init(), type: "gap text" , topic: "Schule", question: "Welche der genannten Lösungen ist heute kaum noch üblich?", correctAnswer: "Schüler[in]", allAnswers: ["Schüler[in]", "Schüler/Schülerin", "Schüler/-in"], answered: [], furtherInformation: "Die Klammerlösung ist zwar amtlich abgesegnet, heute kaum noch üblich, da sie den Eindruck erweckt, die feminine Form sei zweitrangig und weniger wichtig.")
    
  
    
    
//AlltagsQuizze
    let quiz200 = Quiz(id: UUID.init(), type: "gap text" , topic: "Alltag", question: "Welche ist die geeignetste Bezeichnung?", correctAnswer: "Ersatzperson", allAnswers: ["Ersatzperson", "Ersatzmann", "Erstazfrau"], answered: [], furtherInformation: "In bestimmten Zusammenhängen ist es geeigneter geschlechtsindifferente Formen der Berufs-, Amts- und Funktionsbezeichung zu verwenden.")
    
    let quiz201 = Quiz(id: UUID.init(), type: "gap text" , topic: "Alltag", question: "Was ist hier korrekte verkürzte Doppelnennung?", correctAnswer: "Masseur/Masseurin", allAnswers: ["Masseur/Masseurin", "Masseur/Masseuse", "Masseure"], answered: [], furtherInformation: "Bei Masseure handelt es sich nicht und eine Doppelnennung, es wird nur das männliche Geschlecht angesprochen. Masseur/Masseuse ist nicht korrekte, da Masseuse heute meist die Bedeutung >Prostituierte in einem Massagesalon< hat.")
    
    
    
    
    
    @Published var quizze : [Quiz] //alle Quizze
    @Published var UniQuizze : [Quiz]   //Array mit allen Quizzen der Kategorie Uni
    @Published var SchuleQuizze : [Quiz]  //Array mit allen Quizzen der Kategorie Schule
    @Published var AlltagQuizze : [Quiz]  //Array mit allen Quizzen der Kategorie Alltag
    
    init() {
        quizze = [quiz1, quiz2, quiz3, quiz4, quiz5, quiz6, quiz7, quiz8, quiz9, quiz10, quiz11, quiz100, quiz200, quiz201]
        UniQuizze = [quiz1, quiz2, quiz3, quiz4, quiz5, quiz6, quiz7, quiz8, quiz9, quiz10, quiz11]
        SchuleQuizze = [quiz100]
        AlltagQuizze = [quiz200, quiz201]
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
    
    func getQuizOffset(_ givenQuiz : Quiz) -> Int {
        if let Offset = self.quizze.firstIndex(where: {$0.question == givenQuiz.question}){
            return Offset
        }
        
        //else sollte nicht benötigt werden, wenn der Aufruf dann erfolgt, wenn klar ist, dass das übergebene Quiz exisitert.
        else{
            return -1
        }
    }
    
    
    //bekommt ein Quiz und einen Nutzernamen übergeben
    //Das Array quizze, das alle Quizze umfasst wird daraufhin durchsucht, bis die Position (im Array) des übergebenen Quiz gefunden wurde (=Variable Offset)
    //für dieses Quiz wird der Benutzername des Spielers hinzugefügt, der die Frage beantwortet hat. Somit kann unterschieden werden, welcher Spieler die Frage bereits beantwortet hat
    func setQuizAnswered(_ givenquiz : Quiz, _ givenUsername : String) -> Void {
        if let Offset = self.quizze.firstIndex(where: {$0.question == givenquiz.question}) {
            
            quizze[Offset].answered.append(givenUsername)
            
            //die Sub-Arrays für die Themen müssen neu geladen werden, damit die Änderungen in den Views Quizauswahl_Universität, Quizauswahl-Schule und Quizauswahl_Alltag übernommen werden
            self.UniQuizze = addQuizze("Uni")
            self.SchuleQuizze = addQuizze("Schule")
            self.AlltagQuizze = addQuizze("Alltag")
        }
        
    }
    
}




