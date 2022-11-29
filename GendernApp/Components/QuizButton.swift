//
//  QuizButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 29.11.22.
//

import SwiftUI

struct QuizButton: View {
    var body: some View {
        VStack(spacing: 20){
            ForEach(quizze, id: \.self.id) { quiz in
                Text(quiz.question)
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color("ButtonColor"))
                    .cornerRadius(20)
                    .shadow(radius:10)
                
            }
        }
    }
}


struct QuizButton_Previews: PreviewProvider {
    static var previews: some View {
        QuizButton()
    }
}
