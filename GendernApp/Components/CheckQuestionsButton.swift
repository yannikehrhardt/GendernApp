//
//  CheckQuestionsButton.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 10.03.23.
//
//UIView für den CheckQuestionsButton

import SwiftUI

struct CheckQuestionsButton: View {
    var background: Color = Color("ButtonColor")
    
    
    var body: some View {
        HStack(spacing:20){
            Image(systemName: "eyeglasses")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Text("Prüfe neue Quizfragen")
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

struct CheckQuestionsButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckQuestionsButton()
    }
}
