//
//  InfoView.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 09.12.22.
//

import SwiftUI

struct InfoView: View {
    
    var givenQuiz : Quiz
    init(givenQuiz: Quiz) {
        self.givenQuiz = givenQuiz
    }
    
    var body: some View {
        VStack(spacing:20){
            Text("Info")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
            
            Text(givenQuiz.furtherInformation)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("TextColor2"))
                .padding(.horizontal)
                .frame(width: 380.0, height: 400.0)
                .background(.white)
                .cornerRadius(20)
                .shadow(radius:10)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
    }
}

//struct InfoView_Previews: PreviewProvider {
 //   static var previews: some View {
 //       InfoView(givenQuiz: quiz1)
  //  }
//}
