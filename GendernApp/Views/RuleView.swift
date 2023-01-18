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
    
    var body: some View {
            VStack(spacing: 40){
                Text("Hier kannst du Regeln kennenlernen")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextColor"))
                    .padding(.top, 50)
               

                RuleScroll(givenRules: rules.rules)
                

                    .padding(.bottom)
                
                Text("Scrolle nach recht um weitere Regeln kennenzulernen")
                
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
