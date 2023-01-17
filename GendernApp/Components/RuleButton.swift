//
//  RuleButton.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 17.01.23.
//

import SwiftUI

struct RuleButton: View {
    var background: Color = Color("ButtonColor")
    
    
    var body: some View {
        VStack(spacing:20){
            Text("Lerne Regeln kennen")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                
        }
        .frame(width: 150, height: 60)
        .background(Color("ButtonColor"))
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct RuleButton_Previews: PreviewProvider {
    static var previews: some View {
        RuleButton()
    }
}
