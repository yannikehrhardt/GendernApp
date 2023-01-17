//
//  SwiftUIView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 17.01.23.
//

import SwiftUI

class Rules: ObservableObject {
    
    
    let rule1 = RuleTemplate(ruleName: "Mehrere Möglichkeiten", ruleText: "Das Gendern folgt nicht immer einer festen Regel, stattdessen können alle Geschlechtsidentitäten durch verschiedene Möglichkeiten angesprochen werden. Scrolle nach rechts, um einige Möglichkeiten kennenzulernen", topic: "Wortebene", example: "")
    
    let rule2 = RuleTemplate(ruleName: "Ausführliche Doppelnennung", ruleText: "Die Doppelnennung femininer und maskuliner Formen ist eine eindeutige Variante in der Gleichstellung von Männern Frauen. Dabei werden jedoch nur Frauen und Männer angesprochen - das macht Sinn, wenn es um eine Situation geht, in der Frauen (oder Männer) tendenziell wenig Beachtung fanden. Der Brauch männliche Bezeichnungen wie bspw. Doktor hinter die weibliche Anrede (Frau Doktor) zu setzen, gilt heute als unüblich ", topic: "Wortebene", example: "Feuerwehrmann und Feuerwehrfraun, Friseur und Friseurin")
    
    let rule3 = RuleTemplate(ruleName: "Sparschreibung bei Doppelnennung", ruleText: "Ein Schrägstrich kann die Schreibweise der ausführlichen Doppelnennung verkürzen. Diese Regel ist jedoch nicht anwendbar, wenn die feminine Form mit einem Umlaut gebildet wird (bspw. Arzt und Ärtztin). Wenn mehrere Pronomen folgen, macht die verkürzte Schreibweise ebenfalls keinen Sinn", topic: "Wortebene", example: "Mitarbeiter und Mitarbeiterinnen -> Mitarbeiter/-innen")
    
    @Published var rules : [RuleTemplate]
    
    init() {
        self.rules = [rule1, rule2, rule3]
    }
    
    
}


