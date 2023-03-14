//
//  AddQuizButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 14.12.22.
//
//UI View die den AddQuizButton darstellt.

import SwiftUI

struct AddQuizButton: View {
    var background: Color = Color("ButtonColor")
    
    var body: some View {
        HStack(spacing:20){
            Image(systemName: "plus.circle")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .frame(width: 80, height: 80)
        .background(Color("ButtonColor"))
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct AddQuizButton_Previews: PreviewProvider {
    static var previews: some View {
        AddQuizButton()
    }
}
