//
//  AdminConfirmQuizButton.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 10.03.23.
//

import SwiftUI

struct AdminConfirmQuizButton: View {
    var background: Color = Color("ButtonColor")

    var body: some View {
        HStack(spacing:20){
            Image(systemName: "folder.badge.plus")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Text("Quizfrage bestätigen")
                .font(.title2)
                .fontWeight(.light)
                .foregroundColor(Color.white)
        }
        .frame(width: 170, height: 80)
        .background(Color("ButtonColor"))
        .cornerRadius(20)
        .shadow(
            color: .green,
            radius: 20)
    }
}

struct AdminConfirmQuizButton_Previews: PreviewProvider {
    static var previews: some View {
        AdminConfirmQuizButton()
    }
}
