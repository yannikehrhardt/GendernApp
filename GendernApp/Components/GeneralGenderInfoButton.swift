//
//  GeneralGenderInfoButton.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 19.01.23.
//

import SwiftUI

struct GeneralGenderInfoButton: View {
    var background: Color = Color("ButtonColor")
    
    var body: some View {
        HStack(spacing:20){
//            Text("Neues Quiz ")
//                .font(.title2)
//                .fontWeight(.light)
//                .foregroundColor(Color.white)
//                .padding(.leading)
                
            
            Image(systemName: "info.circle")
                .font(.largeTitle)
                .foregroundColor(.white)

            
                
        }
        .frame(width: 80, height: 80)
        .background(Color("ButtonColor"))
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct GeneralGenderInfoButton_Previews: PreviewProvider {
    static var previews: some View {
        GeneralGenderInfoButton()
    }
}
