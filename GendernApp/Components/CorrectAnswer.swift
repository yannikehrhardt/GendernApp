//
//  CorrectAnswer.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 30.11.22.
//

import SwiftUI

struct CorrectAnswer: View {
    
    var answer: Quiz
    @State private var isSelected = false
    var green = Color("CorrectAnswer")
    
    var body: some View {
        HStack(spacing: 20){
            
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.correctAnswer)
                .bold()
            
            
            if isSelected{
                Spacer()
                
                Image(systemName:  "checkmark.circle.fill")
                    .foregroundColor(green)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(isSelected ? Color("ButtonColor") : .gray)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ?  green : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            isSelected = true
        }
    }
}

struct CorrectAnswer_Previews: PreviewProvider {
    static var previews: some View {
        CorrectAnswer(answer: Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo1?", correctAnswer: "right", incorrectAnswers: ["wrong", "wrong"], answered: false))
    }
}


