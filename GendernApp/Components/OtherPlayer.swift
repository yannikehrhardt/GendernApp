//
//  OtherPlayer.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 06.12.22.
//

import SwiftUI

struct OtherPlayer: View {
    var background: Color = Color("ButtonColor")
    
    var body: some View {
        Text("log in with another player account")
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
        OtherPlayer()
    }
}