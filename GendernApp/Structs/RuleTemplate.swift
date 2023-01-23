//
//  SwiftUIView.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 17.01.23.
//

import SwiftUI

struct RuleTemplate {

    var id: UUID
    var ruleName : String
    var ruleText : String
    var topic : String
    var example : String
    
    init(ruleName: String, ruleText: String, topic: String, example : String) {
        self.id = UUID.init()
        self.ruleName = ruleName
        self.ruleText = ruleText
        self.topic = topic
        self.example = example
    }
        
}

