//
//  InfoView.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 09.12.22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(spacing:20){
            Text("Info")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
            
            Text("Studiernde ist korrekt weil: lkjhlkjhjqehwlkrjhlqkjrhelkqwjehrlkqjwehrlkqwjerhqwkljerhqököqehrqökehröqkhreöqkjhjhöqjhörjhöqjkerhökqwejrhöqwkejrhöqkjwrhökjwehöqkjrheöqkjwrehöqjwkehröwqjkrhöqwjrhqökjerhöqwjerhöq")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("TextColor2"))
                .frame(width: 380.0, height: 400.0)
                .background(.white)
                .cornerRadius(20)
                .shadow(radius:10)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
