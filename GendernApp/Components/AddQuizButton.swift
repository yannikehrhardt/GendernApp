//
//  AddQuizButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 14.12.22.
//

import SwiftUI

struct AddQuizButton: View {
    var background: Color = Color("ButtonColor")
    
    var body: some View {
        VStack(spacing:20){
            Text("Add new Quiz")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                
        }
        .frame(width:200, height: 70)
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
