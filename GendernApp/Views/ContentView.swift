//
//  ContentView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 01.11.22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20){
                    Image("Genderzeichen 1")
                    Text("GenderApp")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("TextColor"))
                    Text("Gendern lernen leicht gemacht")
                        .foregroundColor(Color("TextColor"))
                }
                
                NavigationLink {
                    Themenauswahl()
                }label: {
                    PlayButton(text: "Play")
                }

                }
                
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("Backgrounds App"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}
