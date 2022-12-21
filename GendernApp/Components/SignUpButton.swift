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
        Text("Sign Up")
            .font(.title2)
            .fontWeight(.medium)
            .foregroundColor(Color.white)
            .padding()
            .padding(.horizontal)
            .background(Color("ButtonColor"))
            .cornerRadius(20)
            .shadow(radius: 10)
        
    }
}

struct OtherPlayer_Previews: PreviewProvider {
    static var previews: some View {
        SignUpButton()
    }
}
