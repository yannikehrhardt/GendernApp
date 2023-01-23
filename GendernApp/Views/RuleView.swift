//
//  RuleView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 17.01.23.
//

import SwiftUI

struct RuleView: View {
    //var givenTopic : String
    @EnvironmentObject var rules: Rules
    
    @State var learning = 0
    
    var body: some View {
        
            VStack(){
                VStack {
                    Picker("Welchen Spielerspezifischen Infos möchtest du sehen?", selection: $learning) {
                        Text("Alle Regeln").tag(0)
                        Text("Offene Regeln").tag(1)
                        Text("Gelernte Regeln").tag(2)
                    }
                    .pickerStyle(.segmented)
                }
                if(learning == 0){
                    RuleScroll(givenRules: rules.rules)
                        .padding(.bottom)
                }
                
                if(learning == 1){
                    RuleScroll(givenRules: rules.openrules)
                }
                
                else if(learning == 2){
                    RuleScroll(givenRules: rules.learnedrules)
                }
                
                Text("Scrolle nach rechts um weitere Regeln kennenzulernen")
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
            .scrollContentBackground(.hidden)
            .environmentObject(rules)
        }
}

struct RuleView_Previews: PreviewProvider {
    static var previews: some View {
        RuleScroll(givenRules: Rules().rules)
            .environmentObject(Rules())
    }
}
