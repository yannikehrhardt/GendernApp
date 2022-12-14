//
//  AddQuestionsView.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 13.12.22.
//

import SwiftUI

struct AddQuestionsView: View {
    @State private var topic: String = ""
    @State private var question: String = ""
    @State private var correctAnswer: String = ""
    @State private var wrongAnswer1: String = ""
    @State private var wrongAnswer2: String = ""
    @State private var furtherInformation: String = ""
    var body: some View {
        VStack(spacing: 40){
            
            Text("Fill in the Textfields")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TextColor"))
                .padding(.bottom)
                .padding(.top, 50)
            
            TextField(
                "Please type a topic...", text: $topic)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Please type a question...", text: $question)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Please type a correct answer...", text: $correctAnswer)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Please type the first wrong answer...", text: $wrongAnswer1)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Please type the second wrong answer...", text: $wrongAnswer2)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            TextField(
                "Please type a explanation...", text: $furtherInformation)
            .padding(.leading, 40.0)
            .frame(width: 350.0, height: 40.0)
            .background(Color.white)
            .shadow(radius: 10)
            .cornerRadius(20)
            
            let quiz = Quiz(id: UUID.init(), type: "gap text", topic: topic, question: question, correctAnswer: correctAnswer, allAnswers: [correctAnswer, wrongAnswer1, wrongAnswer2], answered: false, furtherInformation: furtherInformation)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
        
    }
}

struct AddQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        AddQuestionsView()
    }
}
