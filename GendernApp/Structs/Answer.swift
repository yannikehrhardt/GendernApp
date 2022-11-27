//
//  Answer.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 27.11.22.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
    
}
