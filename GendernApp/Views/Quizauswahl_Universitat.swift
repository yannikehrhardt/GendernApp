//
//  Quizauswahl_Universitat.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import SwiftUI

struct Quizauswahl_Universitat: View {
    
    func creator(givenquiz : Quiz) -> any View {
        print(givenquiz.question) as! (any View)
    }
    
    var body: some View {
        VStack(spacing: 20){
            
            ForEach(quizze, id: \.self.id) { quiz in
                            Text(quiz.question)
                                .foregroundColor(Color.white)
                                .padding()
                                .padding(.horizontal)
                                .background(Color("ButtonColor"))
                                .cornerRadius(20)
                                .shadow(radius:10)
                                
                        }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
    }
}

struct Quizauswahl_Universitat_Previews: PreviewProvider {
    static var previews: some View {
        Quizauswahl_Universitat()
    }
}
