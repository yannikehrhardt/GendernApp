//
//  UniversitatButton.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

// In dieser SwiftUIView wird der Themen Button "Universität" implementiert, der aus einem Text und einer Background-Color besteht
// Der Button wird in der Themenauswahl verwendet

import SwiftUI

struct UniversityButton: View {

    var background: Color = Color("ButtonColor")
        
    var body: some View {
        VStack(alignment: .leading, spacing:20){
                HStack{
                    Image(systemName: "arrowshape.forward")
                        .foregroundColor(.white)
                        
                    Text("Universität")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                }
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(width: 200, height: 80)
            .background(Color("ButtonColor"))
            .cornerRadius(20)
            .shadow(radius: 20)
        }
    }

struct UniversitatButton_Previews: PreviewProvider {
    static var previews: some View {
        UniversityButton()
    }
}


// Button größer machen
