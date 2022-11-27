//
//  UniversitatButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import SwiftUI

struct UniversitatButton: View {
        var text: String
        var background: Color = Color("ButtonColor")
        
        var body: some View {
            Text("Universität")
                .foregroundColor(Color.white)
                .padding()
                .padding(.horizontal)
                .background(Color("ButtonColor"))
                .cornerRadius(20)
                .shadow(radius: 10)
            
        }
    }

struct UniversitatButton_Previews: PreviewProvider {
    static var previews: some View {
        UniversitatButton(text: "Universität")
    }
}
