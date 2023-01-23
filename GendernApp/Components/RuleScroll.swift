//
//  SwiftUIView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 17.01.23.
//

import SwiftUI

struct RuleScroll: View {
    var givenRules : [RuleTemplate]
    @EnvironmentObject var rules: Rules
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack() {
                ForEach(givenRules, id: \.self.id) { rule in
                    VStack{
                        
                        Text(rule.ruleName)
                            .fontWeight(.bold)
                            .foregroundColor(Color("TextColor"))
                            .font(.title)
                            .multilineTextAlignment(.leading)
                            .underline()
                        
                        
                        Text(rule.ruleText)
                            .fontWeight(.bold)
                            .foregroundColor(Color("TextColor"))
                            .padding([.top, .leading], 10)
                            .font(.callout)
                        if(rule.example != ""){
                            Text("Beispiel: \(rule.example)")
                                .fontWeight(.bold)
                                .foregroundColor(Color("TextColor"))
                                .padding(.top, 10)
                                .font(.callout)
                        }
                        
                        HStack{
                            Button("Als gelernt markieren"){
                                if(!rules.containsRule(givenRule: rule, destination: "learnedrules")){
                                    self.rules.addRule(givenRule: rule, destination: "learnedrules")
                                }
                            }
                            .foregroundColor(.black)
                            .padding(15)
                            .padding(.horizontal, 20)
                            .background(.white)
                            .cornerRadius(40)
                            
                            
                            Button("Als offen markieren"){
                                if(!rules.containsRule(givenRule: rule, destination: "openrules")){
                                    self.rules.addRule(givenRule: rule, destination: "openrules")
                                }
                            }
                            .foregroundColor(.black)
                            .padding(15)
                            .padding(.horizontal, 20)
                            .background(.white)
                            .cornerRadius(40)
                        }
                            
                    }
                    .frame(width: 380, height: 650)
                    .background(Color("ButtonColor"))
                    .cornerRadius(20)
                }
            }
        }
        .padding(.leading, 7.0)
        .environmentObject(rules)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RuleScroll(givenRules: Rules().rules)
            .environmentObject(Rules())
    }
}
