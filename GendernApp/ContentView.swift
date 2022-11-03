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

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}
