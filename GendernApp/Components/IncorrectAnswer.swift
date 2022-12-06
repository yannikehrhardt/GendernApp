//
//  IncorrectAnswer.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 30.11.22.
//

import SwiftUI

struct IncorrectAnswer: View {
    
    var answer: Quiz
    @State private var isSelected = false
    var red = Color ("WrongAnswer")
    
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.incorrectAnswers[1])
                .bold()
            
            
            if isSelected{
                Spacer()
                
                Image(systemName: "x.circle.fill")
                    .foregroundColor(red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(isSelected ? Color("ButtonColor") : .gray)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? red : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            isSelected = true
        }
    }
}

struct IncorrectAnswer_Previews: PreviewProvider {
    static var previews: some View {
        IncorrectAnswer(answer: Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo1?", correctAnswer: "hallo", incorrectAnswers: ["wrong", "wrong"], answered: false))
    }
}
