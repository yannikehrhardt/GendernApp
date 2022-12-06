//
//  IncorrectAnswer.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 30.11.22.
//

import SwiftUI

struct AllAnswers: View {
    
    var answer: Quiz
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    var green = Color("CorrectAnswer")
    var red = Color ("WrongAnswer")
    
    
    var body: some View {
        VStack{
            HStack(spacing: 20){
                
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer.allAnswers[0])
                    .bold()
                
                if isSelected3 && answer.allAnswers[0] == answer.correctAnswer {
                    Spacer()
                    
                    Image(systemName:  "checkmark.circle.fill")
                        .foregroundColor(green)
                }
                else {
                    if isSelected3{
                        Spacer()
                        
                        Image(systemName:  "x.circle.fill")
                            .foregroundColor(red)
                    }
                }
            }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(isSelected3 ? Color("ButtonColor") : .gray)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: isSelected3 ? ( answer.allAnswers[0] == answer.correctAnswer ?  green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
                    .onTapGesture {
                        isSelected3 = true
                    }

            
            HStack(spacing: 20){
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer.allAnswers[1])
                    .bold()
                
                if isSelected && answer.allAnswers[1] == answer.correctAnswer {
                    Spacer()
                    
                    Image(systemName:  "checkmark.circle.fill")
                        .foregroundColor(green)
                }
                else {
                    if isSelected{
                        Spacer()
                        
                        Image(systemName:  "x.circle.fill")
                            .foregroundColor(red)
                    }
                }

            }
            .padding()
            .foregroundColor(isSelected ? Color("ButtonColor") : .gray)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: isSelected ? (answer.allAnswers[1] == answer.correctAnswer ?  green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
            .onTapGesture {
                isSelected = true
            }
            
            HStack(spacing: 20){
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(answer.allAnswers[2])
                    .bold()
                
                if isSelected2 && answer.allAnswers[2] == answer.correctAnswer {
                    Spacer()
                    
                    Image(systemName:  "checkmark.circle.fill")
                        .foregroundColor(green)
                }
                else {
                    if isSelected2{
                        Spacer()
                        
                        Image(systemName:  "x.circle.fill")
                            .foregroundColor(red)
                    }
                }
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(isSelected2 ? Color("ButtonColor") : .gray)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: isSelected2 ? (answer.allAnswers[2] == answer.correctAnswer ?  green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
            .onTapGesture {
                isSelected2 = true
            }
        }
    }
    
    
    struct IncorrectAnswer_Previews: PreviewProvider {
        static var previews: some View {
            AllAnswers(answer: Quiz(id: UUID.init(), type: "gap text" , topic: "Uni", question: "hallo1?", correctAnswer: "hallo", allAnswers: ["hallo","falsch", "wrong"], answered: false))
        }
    }
    
}
