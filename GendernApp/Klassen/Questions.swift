//
//  Questions.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 24.11.22.
//

// In dieser Klasse werden die hard gecodeden Quizze angelegt. Alle Quizze werden in einem Array namens quizze gespeichert. Weiterhin werden in dieser Klasse Funktionen implementiert, die auf die Quizze angewendet weredn.

import Foundation
import SwiftUI

class Questions : ObservableObject{
//Uni Quizze
    //Ausführliche und verkürzte Doppelnennung
    let quiz1 = Quiz(type: "gap text" , topic: "Uni", question: "Was ist die korrekte ausführliche Doppelnennung für Studenten?", correctAnswer: ["Studenten und Studentinnen", "", ""], allAnswers: ["Studenten und Studentinnen", "Student/-innen", "StudentInnen"], furtherInformation: "Bei der ausführlichen Doppelnennung werden gleichermaßen und explizit weibliche und männliche Personen angesprochen. Die ausführliche Doppelnennung erfolgt mit Hilfe unterschiedlicher Konjunktionen, die die beiden Formen, die im Singular oder Plural stehen können, verbindet. Die Konjunktion kann auch durch einen Schrägstrich ersetzt werden.", createdBy: "")
    
    let quiz2 = Quiz(type: "gap text" , topic: "Uni", question: "Wie können alle Geschlechtsidentitäten angesprochen werden?", correctAnswer: ["Student*innen","Student_innen", ""], allAnswers: ["Student*innen", "Student_innen", "Studenten und Studentinnen"], furtherInformation: "Die Sternchenlösung wird zunehmend verwendet, da das Geschlecht nicht mehr nur als binäres System verstanden wird. Auch die Gender-Gap dient diesem Zweck. Diese Lösungen stehen allerdings nicht im Einklang mit der amtlichen Orthographie und können zu einigen praktischen Problemen führen.", createdBy: "")
    
    let quiz3 = Quiz(type: "gap text" , topic: "Uni", question: "Wie kann man Mitarbeiter richtig gendern, um alle Geschlechtsidentitäten anzusprechen?", correctAnswer: ["Mitarbeiter_innen", "", ""], allAnswers: ["Mitarbeiter_innen","Mitarbeiter und Mitarbeiterinnen", "MitarbeiterInnen"], furtherInformation: "Ähnlich wie das Sternchen hat der Unterstrich die Intention, alle existierenden Geschlechter anzusprechen. Ziel ist es, das normale Schriftbild bewusst zu irritieren. Allerdings kann diese unkonventionelle Lösung zu einigen praktischen Problemen führen. Ein Beispiel hierfür ist die Internetsuche.", createdBy: "")
    
    let quiz4 = Quiz(type: "gap text" , topic: "Uni", question: "Welche Berufsbezeichung ist geschlechtsindifferent?", correctAnswer: ["Reinigungskraft", "", ""], allAnswers: ["Reinigungskraft", "Doktorand", "Professor"], furtherInformation: "Reinigungskraft ist geschlechtsindifferent. Geschlechtsneutrale oder geschlechtsindifferente Wörter sind solche, deren grammatikalisches Geschlecht nicht zwingend mit dem natürlichen Geschlecht übereinstimmt und damit eindeutig alle Geschlechter bezeichnen. Sowohl Doktorand als auch Professor beziehen sich nur auf das männliche Geschlecht.", createdBy: "")
    
    let quiz5 = Quiz(type: "gap text" , topic: "Uni", question: "Welche Lösung ist heute unüblich?", correctAnswer: ["Professor[in]", "", ""], allAnswers: ["Professor[in]", "Professor/-in", "Professor und Professorin"],  furtherInformation: "Die Klammerlösung ist zwar amtlich abgesegnet, heute aber kaum noch üblich, da sie den Eindruck erweckt, die feminine Form sei zweitrangig und weniger wichtig.", createdBy: "")
    
    let quiz6 = Quiz(type: "gap text" , topic: "Uni", question: "Was ist die korrekte ausführliche Doppelnennung von Professoren?", correctAnswer: ["Professoren/Professorinnen", "", ""], allAnswers: ["Professoren/Professorinnen", "Professor*innen", "Professor[innen]"], furtherInformation: "Bei der ausführlichen Doppelnennung werden gleichermaßen und explizit weibliche und männliche Personen angesprochen. Die ausführliche Doppelnennung erfolgt mit Hilfe unterschiedlicher Konjunktionen, die die beiden Formen, die im Singular oder Plural stehen können, verbindet. Die Konjunktion kann auch durch einen Schrägstrich ersetzt werden.", createdBy: "")
    
    let quiz7 = Quiz(type: "gap text" , topic: "Uni", question: "Welche Lösung ist die korrekte Sparschreibung für Doktorant?", correctAnswer: ["Doktorant/-in", "", ""], allAnswers: ["Doktorant/-in", "Doktorant und Doktorantin", "Doktorant/Doktorantin"], furtherInformation: "Durch den Schrägstrich mit Bindestrich können Personenbezeichnungen gleichberechtigt und deutlich verkürzt geschrieben werden. Diese Schreibweise ist amtlich. Probleme gibt es mit dieser Schreibweise, wenn die feminine Form mit einem Umlaut gebildet wird. Hierbei kann diese Art der Sparschreibung nicht angewendet werden. Weitere Möglichkeiten der Sparschreibung sind das Binnen-I, die Sternchenlösung oder der die Gender-Gap, diese sind allerdings nicht amtlich.", createdBy: "")
    
    let quiz8 = Quiz(type: "gap text" , topic: "Uni", question: "Welche Lösung lässt sich der Sparschreibung mit Binnenmajuskel zuordnen?", correctAnswer: ["WirtschaftsinformatikerInnen", "", ""], allAnswers: ["WirtschaftsinformatikerInnen", "Wirtschaftsinformatiker*innen", "Wirtschaftsinformatiker_innen"], furtherInformation: "Binnenmajuskel oder auch Binnen-I wird seit den 1980er-Jahren in bestimmten Kontexten verwendet. Ziel des Binnen-I ist es, die Aufmerksamkeit auf die Gender-Problematik zu lenken. Bei der Anwendung dieser Form der Sparschreibung können Probleme im Zusammenhang mit orthografiekonformer Schreibung und der Aussprache entstehen.", createdBy: "")
    
    let quiz9 = Quiz(type: "gap text" , topic: "Uni", question: "Welche Sparschreibung ist nicht üblich?", correctAnswer: ["Wir wollen die Aufmerksamkeit des/-r Leser/-in wecken", "", ""], allAnswers: ["Wir wollen die Aufmerksamkeit des/-r Leser/-in wecken", "Wir suchen einen Professor oder eine Professorin", "Wenden Sie sich bitte an den Doktorant/die Doktorantin"], furtherInformation: "Gibt es keine passende Möglichkeit der Ersetzung oder ist die Sparschreibung zu unübersichtlich, sollte man die ausführliche Doppelnennung verwenden.", createdBy: "")
    
    let quiz10 = Quiz(type: "gap text", topic: "Uni", question: "Welche Lösung ist amtlich und praxistauglich?" , correctAnswer: ["Kollegen/Kolleginnen", "", ""], allAnswers: ["Kollegen/Kolleginnen", "Kolleg-/-inn/-en", "Kolleg*innen"], furtherInformation: "Kolleg-/-inn/-en ist eine nicht übliche und aus orthografischer und stilistischer Sicht problematische Schreibweise. Die Schreibweise mit dem Genderstern, der Gendergap oder dem Binnenmajuskel sind nicht amtlich. Die ausführliche und verkürzte Doppelnennung sind sowohl amtlich als auch praxistauglich.", createdBy: "")
    
    //Ersatzformen
    let quiz11 = Quiz(type: "gap text", topic: "Uni", question: "Was ist eine gute Ersatzform für Student?" , correctAnswer: ["der/die Studierende", "", ""], allAnswers: ["der/die Studierende", "die Studierenden", "der Student/die Studentin"], furtherInformation: "Die richtige Lösung ist in diesem Fall das substantivierte Partizip 1 Singular der/die Studierende. Die Studierenden ist zwar auch eine Ersatzform, allerdings nur für den Plural Studenten.", createdBy: "")
        
    
//SchulQuizze
    let quiz100 = Quiz(type: "gap text" , topic: "Schule", question: "Welche der genannten Lösungen ist heute kaum noch üblich?", correctAnswer: ["Schüler[in]", "", ""], allAnswers: ["Schüler[in]", "Schüler/Schülerin", "Schüler/-in"], furtherInformation: "Die Klammerlösung ist zwar amtlich abgesegnet, heute kaum noch üblich, da sie den Eindruck erweckt, die feminine Form sei zweitrangig und weniger wichtig.", createdBy: "")
    
    let quiz101 = Quiz(type: "gap text" , topic: "Schule", question: "Welche Lösungen sind Sparschreibungen?", correctAnswer: ["Lehrer*innen", "Lehrer_innen", ""], allAnswers: ["Lehrer*innen", "Lehrer_innen", "Lehrer/Lehrerinnen"], furtherInformation: "Zu den Sparschreibungen zählen die verkürzte Doppelnennung mit Schrägstrich, die Sternchenlösung, die Gendergap, das Binnen-I und die Klammerung, welche allerdings heute unüblich ist.", createdBy: "")
  
    let quiz102 = Quiz(type: "gap text" , topic: "Schule", question: "Welche Sparform im Plural ist nicht üblich?", correctAnswer: ["Kolleg-/-inn/-en", "", ""], allAnswers: ["Kolleg-/-inn/-en", "Kolleg/innen", "KollegInnen"], furtherInformation: "Kolleg-/-inn/-en entspricht zwar den Anforderungen der amtlichen Rechtschreibung, ist aber eine sehr komplexe und daher unübliche Lösung. Zur Vereinfachung wird daher oft auf Kurzformen wie Kolleg/innen zurückgegriffen, die allerdings Mängel in Bezug auf Orthographie und Stil aufweist. Wer orthographische und stilistische Probleme vermeiden möchte, sollte auf die ausführliche Doppelnennung zurückgreifen.", createdBy: "")
    
    let quiz103 = Quiz(type: "gap text" , topic: "Schule", question: "Was ist hier eine gute Ersatzform für Anfängerkurs?", correctAnswer: ["Grundkurs", "Einstiegskurs", ""], allAnswers: ["Anfängerinnenkurs", "Grundkurs", "Einstiegskurs"], furtherInformation: "Die Bildung von Komposita mit femininen Erstgliedern ist zwar möglich, allerdings weniger üblich. Üblicher sind dagegen Lösungen mit geschlechtsneutralem Bestimmungswort.", createdBy: "")
    
    let quiz104 = Quiz(type: "gap text" , topic: "Schule", question: "Welche der folgenden Lösungen ist geschlechtergerecht?", correctAnswer: ["Bitte unterschreiben Sie das Fromular.", "Der/Die Antragsteller/-in muss das Formular unterschreiben.", ""], allAnswers: ["Der Antragsteller muss das Formular unterschreiben.", "Bitte unterschreiben Sie das Fromular.", "Der/Die Antragsteller/-in muss das Formular unterschreiben."], furtherInformation: "Um Sätze oder Texte geschlechtergerecht zu gestalten, sind Umformulierungen das beste Mittel. Allerdings verlangen diese sehr viel Kreativität. Wie umformuliert wird, kann frei entschieden werden. Entweder es werden schlichte Ersetzungen mit neutralen Ausdrücken oder Doppelnennung verwendet oder man verändert das Satzkonstrukt.", createdBy: "")
    
    let quiz105 = Quiz(type: "gap text" , topic: "Schule", question: "Welche Lösung ist die höflichste und eindeutigste Variante der sprachlichen Gleichstellung?", correctAnswer: ["Sehr geehrte Schüler und Schülerinnen", "", ""], allAnswers: ["Sehr geehrte Schüler und Schülerinnen", "Sehr geehrte Schüler", "Schüler/-innen"], furtherInformation: "Die ausführliche Doppelnennung ist die höflichste und eindeutigste Variante der sprachlichen Gleichstellung, da explizit beide Geschlechter angesprochen werden. Besonders in der persönlichen Anrede ist sie üblich, da man hier möchte, dass alle sich individuell angesprochen fühlen.", createdBy: "")
    
    
//AlltagsQuizze
    let quiz200 = Quiz(type: "gap text" , topic: "Alltag", question: "Welche ist die geeignetste Bezeichnung?", correctAnswer: ["Ersatzperson", "", ""], allAnswers: ["Ersatzperson", "Ersatzmann", "Erssatzfrau"], furtherInformation: "In bestimmten Zusammenhängen ist es geeigneter, geschlechtsindifferente Formen der Berufs-, Amts- und Funktionsbezeichnung zu verwenden.", createdBy: "")
    
    let quiz201 = Quiz(type: "gap text" , topic: "Alltag", question: "Was ist hier korrekte ausführliche Doppelnennung?", correctAnswer: ["Masseur/Masseurin", "", ""], allAnswers: ["Masseur/Masseurin", "Masseur/Masseuse", "Masseure"], furtherInformation: "Bei Masseure handelt es sich nicht um eine Doppelnennung, es wird nur das männliche Geschlecht im Plural angesprochen. Masseur/Masseuse ist nicht korrekte, da Masseuse heute meist die Bedeutung >Prostituierte in einem Massagesalon< hat.", createdBy: "")
    
    let quiz202 = Quiz(type: "gap text" , topic: "Alltag", question: "Welche Lösungen stehen nicht im Einklang mit der amtlichen Orthographie?", correctAnswer: ["Manager_innen", "Manger*innen", "ManagerInnen"], allAnswers: ["Manager_innen", "Manger*innen", "ManagerInnen"], furtherInformation: "Es gibt verschiedene Arten der Sparschreibung, welche nicht mit den amtlichen Rechtschreibregeln im Einklang sind. Allerdings sind viele dieser Varianten sehr praktisch und werden in Kontexten verwendet, in denen Amtlichkeit keine Rolle spielt.", createdBy: "")
    
    let quiz203 = Quiz(type: "gap text" , topic: "Alltag", question: "Welche Lösungen sind substantivierte Adjektive?", correctAnswer: ["der/die Kranke", "die Kranken", ""], allAnswers: ["der/die Kranke", "die Kranken", "Der Patient/die Patientin"], furtherInformation: "Substantiviert Adjektive sind eine Möglichkeit der Ersetzung. Gerade im Plural bieten sie sich an, da man sich hier die Unterscheidung des Genus sparen kann und damit die Personenbezeichnung genderneutral gestalten kann.", createdBy: "")
    
    let quiz204 = Quiz(type: "gap text" , topic: "Alltag", question: "Was ist hier eine gute Umformulierung?", correctAnswer: ["fachliche Hilfe", "", ""], allAnswers: ["fachliche Hilfe", "Hilfe eines Fachmanns", "Hilfe eines/einer Fachmann/Fachfrau"], furtherInformation: "Eine Möglichkeit der Umformulierung ist die Umformulierung mithilfe des Adjektivs. Besonders wenn die maskuline Form in der Funktion eines Attributs auftaucht, kann man diese leicht durch Adjektive ersetzten. In solchen Fällen ist oft Kreativität gefragt und es gibt meist keine eindeutige richtige Lösung.", createdBy: "")
    
    let quiz205 = Quiz(type: "gap text" , topic: "Alltag", question: "Was ist in diesem Fall ein guter Ausweg?", correctAnswer: ["Gehweg", "", ""], allAnswers: ["Gehweg", "Bürgersteig", "Bürgerinnensteig"], furtherInformation: "Bürgersteig ist zwar die übliche Lösung, wenn man aber genderneutral formulieren möchte, gibt es den Fachtermini Gehweg als Ausweg. Bürgerinnensteig ist nicht sinnvoll.", createdBy: "")
    
    
    @Published var quizze : [Quiz] //alle Quizze
    @Published var UniQuizze : [Quiz]   //Array mit allen Quizzen der Kategorie Uni
    @Published var SchuleQuizze : [Quiz]  //Array mit allen Quizzen der Kategorie Schule
    @Published var AlltagQuizze : [Quiz]  //Array mit allen Quizzen der Kategorie Alltag
    @Published var toBeTested : [Quiz]   //Array mit Quizzen, die durch Admins bestätigt werden müssen
    
    init() {
        quizze = [quiz1, quiz2, quiz3, quiz4, quiz5, quiz6, quiz7, quiz8, quiz9, quiz10, quiz11, quiz100, quiz101, quiz102, quiz103, quiz104, quiz105, quiz200, quiz201, quiz202, quiz203, quiz204, quiz205]
        UniQuizze = [quiz1, quiz2, quiz3, quiz4, quiz5, quiz6, quiz7, quiz8, quiz9, quiz10, quiz11]
        SchuleQuizze = [quiz100, quiz101, quiz102, quiz103, quiz104, quiz105]
        AlltagQuizze = [quiz200, quiz201, quiz202, quiz203, quiz204, quiz205]
        toBeTested = []
    }
    
    //Diese Funktion gibt ein Array aus Quiz-Fragen mit übergebenem Topic zurück, die aus dem quizze-Array einsortiert werden
    func addQuizze(_ givenTopic : String) -> [Quiz] {
        var solution : [Quiz] = []
        for element in quizze {
            if (element.topic == givenTopic){
                solution.append(element)
            }
        }
        return solution
    }
    
    //Diese Funktion gibt den Offset eines Quizes aus einem ausgewählten Quiz-Array zurück, dies geschieht für die Werte "quizze" und "toBeTested"
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
        
        //else sollte nicht benötigt werden, wenn der Aufruf dann erfolgt, wenn klar ist, dass das übergebene Quiz exisitert (sollte vorher geprüft werden).
        else{
            return -1
        }
        //wird benötigt, da der Compiler nicht versteht, dass durch das else alle Fälle abgedeckt sind
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
    
    //gibt an, wie viele Fragen bereits korrekt angetippt wurden und erhöht den entsprechenden Wert
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




