//
//  RuleButton.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 17.01.23.
//
//UIView zur Darstellung des Rule Button.

import SwiftUI

struct RuleButton: View {
    var background: Color = Color("ButtonColor")
    
    
    var body: some View {
        HStack(spacing:20){
            Image(systemName: "book")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Text("Lerne die Regeln")
                .font(.title2)
                .fontWeight(.light)
                .foregroundColor(Color.white)
        }
        .frame(width: 200, height: 80)
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
