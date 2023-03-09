//
//  SwiftUIView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 17.01.23.
//

import SwiftUI

class Rules: ObservableObject {
    
    
    let rule1 = RuleTemplate(ruleName: "Mehrere Möglichkeiten", ruleText: "Gendern bezeichnet ein sprachliches Verfahren, bei dem es um die Gleichberechtigung von Männern und Frauen im Sprachgebrauch geht. Es bedeutet also die Anwendung geschlechtergerechter Sprache. Das Gendern folgt keinen vorgegbenen Regel, es gibt also kein Richtig gendern nach vorgegeben Regeln. Stattdessen bedeutet gendern situations- und sachangemessen die geschlechtergerechte Sprache in der eigenen Sprachproduktion umzustetzen. Hierfür gibt es verschiedene Hilfestellungen alle Geschlechtsidentitäten anzusprechen, die im Folgenden aufeglistet werden. Scrolle nach rechts, um einige Möglichkeiten kennenzulernen", topic: "Wortebene", example: "")
    
    let rule2 = RuleTemplate(ruleName: "Ausführliche Doppelnennung", ruleText: "Die Doppelnennung femininer und maskuliner Formen nennt männliche und weibliche Personen gleichermaßen und ist damit die eindeutigste und höflichste Form der sprachlichen Gleichstellung. Sie wird in der Regel dann als sinnvoll erachtet, wenn es explizit um beide Geschlechter geht, Frauen aber traditionell nicht so häufig vorkommen und deshalb bewusst angesprochen werden sollten. Ein Beispiel für einen solchen Kontext kann die Beschreibung von Berufen sein, in denen die Förderung von Frauen angestrebt werden soll. Die Doppelnennung kann in der Praxis je nach Kontext mit unterschiedlichsten Konjunktionen verbunden werden und in der Reihenflge der Nennung variabel sein. Der Vorteil der Doppelnennung liegt darin, dass explizit Männer und Frauen angesprochen werden. Der Nachteil dieser sprachlichen Gleichstellung ist zum einen der enorme Platzaufwand, sowie eventuelle Störungen in der gesprochenen Sprache", topic: "Wortebene", example: "Feuerwehrmänner und Feuerwehrfrauen, Friseur oder Friseurin")
    
    let rule3 = RuleTemplate(ruleName: "Sparschreibung bei Doppelnennung", ruleText: "Die Sparschreibung bei Doppelnennung ist eine Möglichkeit mehr Übersichtlichkeit zu schaffen und sprachökomischer zu kommunizieren. Bei der Sparschreibung wird ein Teil des langen Ausdrucks der Doppelnennung eigespart. Hierfür gibt es verschiedene Möglichkeiten. Zu diesen zählen: Schrägstrich mit Bindestrich, Großes I, Sternchen, Unterstrich, Klammern", topic: "Wortebene", example: "Mitarbeiter und Mitarbeiterinnen -> Mitarbeiter/-innen, MitarbeiterInnen, Mitarbeiter_innen, Mitarbeiter*innen, Mitarbiter[innen]")
    
    let rule4 = RuleTemplate(ruleName: "Ersatzformen und Umformuliereungen", ruleText: "Oft ist es sinnvoll Synonyme für Ausdrücke zu finden. Diese können dabei helfen Doppelnennungen und unschöne Sparschreibungslösungen zu vermeiden. Des Weiteren kann mit Ihnen die Festlegung auf nur zwei Geschlechter vermeiden und mehrere Geschlechtsidentitäten angesprochen werden. Es gibt mehrere Möglichkeiten, geeignete Synonyme/Alternativen zu finden. Zu diesen zählen: Substantiverte Partizipien oder Adjektive, Sachbezeichnungen, Geschlechtsneutrale Ausdrücke, Kurzwörter, Direkte Anrede, Umformulierung mithilfe des Ajektivs, Umschreibung mit dem Passiv oder mt wir und Bildung von Relativsätzen. ", topic: "Wortebene", example: " der Student/die Studentin -> der/die Studierende, Professor oder Professorin -> Professur, die Anhänger -> die Fans, der/die Hilfswissenschaftler/-in --> der/die Hiwi")
    
    let rule5 = RuleTemplate(ruleName: "Ableitung und Zusammensetzung", ruleText: "", topic: "Wortebene", example: "")
    
    //Ändert sich ein Wert einer dieser Variablen, werden alle Screens in denen Rules verwendet wird, neu geladen
    @Published var rules : [RuleTemplate]
    @Published var learnedrules : [RuleTemplate]
    @Published var openrules : [RuleTemplate]
    
    init() {
        self.rules = [rule1, rule2, rule3, rule4, rule5]
        self.openrules = []
        self.learnedrules = []
    }
    
    //adding a rule to a given array
    func addRule(givenRule : RuleTemplate, destination : String){
        if(destination == "rules"){
            self.rules.append(givenRule)
        }
        if(destination == "openrules"){
            self.openrules.append(givenRule)
        }
        if(destination == "learnedrules"){
            self.learnedrules.append(givenRule)
        }
    }
    
    //prüft, ob eine Regel in einem der Regel-Arrays (rules, openrules, learnedrules) liegt
    func containsRule(givenRule: RuleTemplate, destination : String) -> Bool{
        var contains = false
        if(destination == "rules"){
            for rule in rules{
                if(rule.id == givenRule.id){
                    contains = true
                    break
                }
            }
        }
        if(destination == "openrules"){
            for rule in openrules{
                if(rule.id == givenRule.id){
                    contains = true
                    break
                }
            }

        }
        if(destination == "learnedrules"){
            for rule in learnedrules{
                if(rule.id == givenRule.id){
                    contains = true
                    break
                }
            }
        }
        return contains
    }
    
    
}


