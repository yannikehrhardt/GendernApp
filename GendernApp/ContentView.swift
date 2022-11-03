//
//  ContentView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 01.11.22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            
            Image("Genderzeichen")
                .imageScale(.small)
                .cornerRadius(20)
            Text("Gendern lernen")
                    .font(.title)
                    .fontWeight(.regular)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.833, green: 0.615, blue: 0.984)/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
            Button("Hier klicken") {
                print("Hello")
                //hier kann man coden, was der Button tun soll
            }
            .accessibilityAddTraits([.isButton])
            .frame(width: 200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0)
            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/Color("ButtonColor")/*@END_MENU_TOKEN@*/)
            
        }
        .padding()
    }
}

    
        
        
        
        


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}
