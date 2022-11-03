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
            Text("Spielerisch das Gendern lernen")
                .navigationTitle("Gendern App")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}
