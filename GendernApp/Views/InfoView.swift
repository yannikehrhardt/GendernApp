//
//  InfoView.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 09.12.22.
//
//In dieser View werden die furtherinformations eines Quizzes dargestellt

import SwiftUI

struct InfoView: View {
    
    var givenQuiz : Quiz
    init(givenQuiz: Quiz) {
        self.givenQuiz = givenQuiz
    }
    
    var body: some View {
        VStack(spacing:20){
            Image(systemName: "chevron.down")
                .font(.title2)
                .frame(alignment: .leading)
            
            Spacer()
            
            Text("Info")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .shadow(radius: 20)
            
            VStack{
                Image(systemName: "lightbulb")
                    .foregroundColor(Color("TextColor2"))
                    .padding(.top)
                    
                //gibt weitere Informationen zum übergebenen Quiz an
                Text(givenQuiz.furtherInformation)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("TextColor2"))
                    .padding(.horizontal)
                    .frame(width: 380.0, height: 300.0)
                
            }
            .background(.white)
            .cornerRadius(20)
            .shadow(radius:10)
            .frame(width: 380.0, height: 400.0)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
    }
}

