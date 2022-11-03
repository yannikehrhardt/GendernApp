//
//  ContentView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 01.11.22.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        
        NavigationView{
            Text("Spielerisch Gendern lernen")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.purple)
                .multilineTextAlignment(.center)
                .navigationTitle("Gendern")
        }
        Button("Hier klicken") {
        }
        .accessibilityAddTraits([.isButton])
        .frame(width: 200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0)
        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
        
    }
}

        
        
        
        
        


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}
