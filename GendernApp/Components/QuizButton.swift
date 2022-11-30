//
//  QuizButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 29.11.22.
//

import SwiftUI

struct QuizButton: View {
    var givenQuiz : [Quiz] = []
    init(givenQuiz: [Quiz]) {
        self.givenQuiz = givenQuiz
    }
    var body: some View {
        ScrollView{
            VStack(spacing: 15){
                ForEach(givenQuiz, id: \.self.id) { quiz in
                    NavigationLink(destination: QuizView()){
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
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding(.top)
    }
//    struct QuizButton_Previews: PreviewProvider {
//        static var previews: some View {
//            QuizButton()
//        }
//    }
}
