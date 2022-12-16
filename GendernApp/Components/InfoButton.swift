//
//  InfoButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 09.12.22.
//

import SwiftUI

struct InfoButton: View {
    var background: Color = Color("ButtonColor")
    
    var body: some View {
        Text("Info")
            .font(.title3)
            .fontWeight(.medium)
            .foregroundColor(Color.white)
            .padding()
            .padding(.horizontal)
            .background(Color("ButtonColor"))
            .cornerRadius(200)
            .shadow(radius: 10)
            .bold()
    }
}

struct InfoButton_Previews: PreviewProvider {
    static var previews: some View {
        InfoButton()
    }
}
