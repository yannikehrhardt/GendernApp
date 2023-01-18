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
        HStack{
            
            Image(systemName: "info.circle")
                .font(.title3)
            
            Text("Info")
                .font(.title3)
                .fontWeight(.medium)
        }
        .foregroundColor(Color.white)
        .padding()
        .background(Color("ButtonColor"))
        .cornerRadius(200)
        .shadow(radius: 20)
    }
}

struct InfoButton_Previews: PreviewProvider {
    static var previews: some View {
        InfoButton()
    }
}
