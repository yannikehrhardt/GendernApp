//
//  ContentView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 01.11.22.
//

import SwiftUI


struct ContentView: View {
    
    @State private var secondView = false
    @State private var thirdView = false
    @State private var fourthView = false
    @State private var fithtView = false
    
    @State var allQuestions : [Quiz] = []
    
    var quiz1 = Quiz(type: "gapText", topic: "Uni", answered: false, question: "Dummy", correctAnswer: "Dummy")
    var quiz2 = Quiz(type: "gapText" , topic: "Uni", answered: false, question: "Dummy2", correctAnswer: "Dummy")
    var quiz3 = Quiz(type: "gapText" , topic: "Uni", answered: false, question: "Dummy3", correctAnswer: "Dummy")
    
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination:  VStack {
                    Text ("Wähle eine Kategorie")
                NavigationLink(destination: Text("ThirdView"), isActive: $thirdView) {
                    var Uni : [Quiz] = [quiz1, quiz2, quiz3]
                    //hallo
                    var NumberofQuestions = Uni.capacity
                    
                    
                    
                }
                NavigationLink(destination: Text("fourthView"), isActive: $fourthView) {EmptyView()}
                NavigationLink(destination: Text("fithtView"), isActive: $fithtView) {EmptyView()}
                    
                List {
                    Button ("Universität/Lehre"){
                           thirdView = true
                        }
                    Button ("Schule"){
                            fourthView = true
                        }
                    Button ("Alltag"){
                        fithtView = true
                        }
                    }
                }
                               , isActive: $secondView) { EmptyView() }
                
                Image("Genderzeichen")
                    .imageScale(.small)
                    .cornerRadius(20)
                Text("Gendern lernen")
                    .font(.title)
                    .fontWeight(.regular)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.833, green: 0.615, blue: 0.984)/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                Button("Hier klicken") {
                    self.secondView = true
                }
                .accessibilityAddTraits([.isButton])
                .frame(width: 200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0)
                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("ButtonColor")/*@END_MENU_TOKEN@*/)
                
            }
            .padding()
        }
        
    }
}


    
        
        
        
        


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}
