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
    Text("Add new Quiz")
        .font(.title2)
        .fontWeight(.medium)
        .foregroundColor(Color.white)
        .multilineTextAlignment(.center)
        .padding()
        .padding(.horizontal)
        .background(Color("ButtonColor"))
        .cornerRadius(20)
        .shadow(radius: 10)
        .frame(maxWidth: .infinity)
    }
}

struct AddQuizButton_Previews: PreviewProvider {
    static var previews: some View {
        AddQuizButton()
    }
}
