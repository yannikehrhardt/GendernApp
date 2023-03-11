//
//  SwiftUIView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 17.01.23.
//

import SwiftUI

class Rules: ObservableObject {
    
    let rule1 = RuleTemplate(ruleName: "Gendern", ruleText: "Gendern bezeichnet ein sprachliches Verfahren, bei dem es um die Gleichberechtigung von Männern und Frauen im Sprachgebrauch geht. Das Gendern folgt keinen vorgegbenen Regeln, es gibt also kein richtig Gendern nach vorgegeben Regeln. Stattdessen bedeutet gendern situations- und sachangemessen die geschlechtergerechte Sprache in der eigenen Sprachproduktion umzustetzen. Hierfür gibt es verschiedene Hilfestellungen alle Geschlechtsidentitäten anzusprechen, die im Folgenden aufeglistet werden. ", topic: "Wortebene", example: "Scrolle nach rechts, um einige Möglichkeiten kennenzulernen")
    
    let rule2 = RuleTemplate(ruleName: "Ausführliche Doppelnennung", ruleText: "Die Doppelnennung nennt männliche und weibliche Personen gleichermaßen und ist damit die eindeutigste und höflichste Form der sprachlichen Gleichstellung. Sie wird in der Regel dann als sinnvoll erachtet, wenn es explizit um beide Geschlechter geht. Die Doppelnennung kann in der Praxis je nach Kontext mit unterschiedlichsten Konjunktionen verbunden werden und in der Reihenfolge der Nennung variabel sein. Der Vorteil der Doppelnennung liegt darin, dass explizit Männer und Frauen angesprochen werden. Der Nachteil dieser sprachlichen Gleichstellung ist zum einen der enorme Platzaufwand, sowie eventuelle Störungen in der gesprochenen Sprache.", topic: "Wortebene", example: "Feuerwehrmänner und Feuerwehrfrauen, Friseur oder Friseurin")
    
    let rule3 = RuleTemplate(ruleName: "Sparschreibung", ruleText: "Die Sparschreibung bei Doppelnennung ist eine Möglichkeit mehr Übersichtlichkeit zu schaffen und sprachöknomischer zu kommunizieren. Bei der Sparschreibung wird ein Teil des langen Ausdrucks der Doppelnennung weggelassen. Hierfür gibt es verschiedene Möglichkeiten. Zu diesen zählen der Schrägstrich mit Bindestrich, das Großes I, das Sternchen, der Unterstrich oder die Klammern. Ein Nachteil dieser sparchlichen Gleichstellung ist, dass viele Sparschreibungen nicht mit der amtlichen Orthographie konform sind.", topic: "Wortebene", example: "Mitarbeiter/-innen, MitarbeiterInnen, Mitarbeiter_innen, Mitarbeiter*innen, Mitarbiter[innen]")
    
    let rule4 = RuleTemplate(ruleName: "Ersatzform und Umformuliereung", ruleText: "Oft ist es sinnvoll Synonyme für Ausdrücke zu finden. Diese können dabei helfen Doppelnennungen und unschöne Sparschreibungslösungen zu vermeiden. Des Weiteren kann mit Ihnen die Festlegung auf nur zwei Geschlechter vermieden werden. Es gibt mehrere Möglichkeiten, geeignete Ersatzformen zu finden. Zu diesen zählen: Substantiverte Partizipien oder Adjektive, Sachbezeichnungen, geschlechtsneutrale Ausdrücke, Kurzwörter, direkte Anrede, Umformulierung mithilfe des Adjektivs, Umschreibung mit dem Passiv oder mit wir und Bildung von Relativsätzen. Gerade die Umformulierung erfordert oft viel Kreativität. ", topic: "Wortebene", example: "Studierende, Professur, Hiwi")
    
    let rule5 = RuleTemplate(ruleName: "Ableitung und Zusammensetzung", ruleText: "Bei eingigen zusammengesetzten oder abgeleiteten Wörtern ist der Stamm bzw. das Erstglied formgleich mit dem generischen Maskulinum. Da diese Wörter zunehmend auch Anstoß nehmen, ist es wichtig auch hier gendergerecht umzuformulieren. Die Bildung von femininen Wortstämmen ist eine Möglichkeit, jedoch nicht immer sinnvoll. Vor allem bei Adjektiven und Verben ist dies meist unsinnvoll. Grundsätzlich gilt es  zu unterscheiden, ob sich Ableitungen uns Zusammensetzungen eher auf Dinge oder Personen beziehen. Je stärker der personenbezug ist, desto wichtiger ist es zu gendern. ", topic: "Wortebene", example: "Bürgersteig ->Gehweg, Anfängerkurs -> Grundkurs ")
    
    //Ändert sich ein Wert einer dieser Variablen, werden alle Screens in denen Rules verwendet wird, neu geladen
    @Published var rules : [RuleTemplate]
    @Published var learnedrules : [RuleTemplate]
    @Published var openrules : [RuleTemplate]
    
    init() {
        self.rules = [rule1, rule2, rule3, rule4, rule5]
        self.openrules = []
        self.learnedrules = []
    }
    
    //Fügt Regeln zu einem given Array hinzu
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


