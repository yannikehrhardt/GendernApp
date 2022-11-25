//
//  GenderView.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 25.11.22.
//

import SwiftUI

struct GenderView: View {
    var body: some View {
        Themenauswahl()
        Quizauswahl_Universität()
        QuizView()
    }
}

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView()
    }
}
