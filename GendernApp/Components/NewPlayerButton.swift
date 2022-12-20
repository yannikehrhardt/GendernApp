//
//  NewPlayerButton.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 20.12.22.
//

import SwiftUI

struct NewPlayerButton: View {
    var body: some View {
        Text("Create a new player account")
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

struct NewPlayerButton_Previews: PreviewProvider {
    static var previews: some View {
        NewPlayerButton()
    }
}
