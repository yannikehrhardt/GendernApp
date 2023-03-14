//
//  NewPlayerButton.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 20.12.22.
//
//UIView die den NewPlayerButton darstellt.

import SwiftUI

struct NewPlayerButton: View {
    var body: some View {
        Text("Jetzt registieren")
            .font(.title2)
            .fontWeight(.light)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .padding()
            .padding(.horizontal)
            .background(Color("ButtonColor"))
            .cornerRadius(20)
            .shadow(radius: 20)
            .frame(maxWidth: .infinity)
        }
    }

struct NewPlayerButton_Previews: PreviewProvider {
    static var previews: some View {
        NewPlayerButton()
    }
}
