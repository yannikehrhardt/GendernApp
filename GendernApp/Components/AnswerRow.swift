//
//  AnswerRow.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @State private var isSelected = false
    
    var green = Color("CorrectAnswer")
    var red = Color ("WrongAnswer")
    
    var body: some View {
        HStack(spacing: 20){
            
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            
            if isSelected{
                Spacer()
                
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
        }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(isSelected ? Color("ButtonColor") : .gray)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: isSelected ? (answer.isCorrect ? green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
            .onTapGesture {
                isSelected = true
            }
            
        
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Single", isCorrect: false))
    }
}
