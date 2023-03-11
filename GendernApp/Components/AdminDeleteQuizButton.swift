//
//  AdminDeleteQuizButton.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 10.03.23.
//

import SwiftUI

struct AdminDeleteQuizButton: View {
    var body: some View {
        HStack(spacing:20){
            Image(systemName: "trash")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Text("Quizfrage löschen")
                .font(.title2)
                .fontWeight(.light)
                .foregroundColor(Color.white)
        }
        .frame(width: 170, height: 80)
        .background(Color("ButtonColor"))
        .cornerRadius(20)
        .shadow(
            color: .red,
            radius: 20)
    }
}

struct AdminDeleteQuizButton_Previews: PreviewProvider {
    static var previews: some View {
        AdminDeleteQuizButton()
    }
}
