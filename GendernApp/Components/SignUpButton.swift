//
//  OtherPlayer.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

struct SignUpButton: View {
    var background: Color = Color("ButtonColor")
    
    var body: some View {
        VStack(spacing:20){
            Text("Registrieren")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
        }
        .frame(width: 150, height: 60)
        .background(Color("ButtonColor"))
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct OtherPlayer_Previews: PreviewProvider {
    static var previews: some View {
        SignUpButton()
    }
}
