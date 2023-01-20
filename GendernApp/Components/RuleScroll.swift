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
