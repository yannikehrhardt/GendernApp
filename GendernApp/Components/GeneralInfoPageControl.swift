//
//  GeneralInfoPageControl.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 23.01.23.
//

import SwiftUI

struct GeneralInfoPageControl: View {
    var body: some View {
        VStack{
            
            Text("Es gibt verschiedene Meinungen zum Gendern. Im Folgenden sind einige beispielhafte Argumente aufgelistet")
                .frame(width: 350, height: 100)
                .shadow(radius: 30)
                .cornerRadius(20)
                .background(Color("ButtonColor"))
                .foregroundColor(.white)
                .frame(width: 350, height: 100)
                .shadow(radius: 30)
                .cornerRadius(20)
            
            VStack{
                HStack{
                    Image(systemName: "plus")
                        .foregroundColor(Color("CorrectAnswer"))
                        .padding(.leading)
                    Text("Gendern macht Frauen in der Sprache sichtbar")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 350, height: 50)
                .background(.white)
                .cornerRadius(20)
                
                HStack{
                    Image(systemName: "plus")
                        .foregroundColor(Color("CorrectAnswer"))
                        .padding(.leading)
                    Text("Gendern kann potenziell Geschlechtsstereotype reduzieren")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 350, height: 50)
                .background(.white)
                .cornerRadius(20)
                
                HStack{
                    Image(systemName: "plus")
                        .foregroundColor(Color("CorrectAnswer"))
                        .padding(.leading)
                    Text("Sprache verändert sich ständig")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 350, height: 50)
                .background(.white)
                .cornerRadius(20)
                
                HStack{
                    Image(systemName: "plus")
                        .foregroundColor(Color("CorrectAnswer"))
                        .padding(.leading)
                    Text("Ein gutes Viertel (26%) der Deutschen befürwortet das Gendern.")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 350, height: 50)
                .background(.white)
                .cornerRadius(20)
                
            }
            .padding(.top)
            
            Image(systemName: "plus.forwardslash.minus")
                .padding(.top)
                .font(.title)
                
            
            VStack{
                HStack{
                    Image(systemName: "minus")
                        .foregroundColor(Color("WrongAnswer"))
                        .padding(.leading)
                    Text("Sprache hat nur begrenzten Einfluss auf reale Verhältnisse")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 350, height: 50)
                .background(.white)
                .cornerRadius(20)
                
                HStack{
                    Image(systemName: "minus")
                        .foregroundColor(Color("WrongAnswer"))
                        .padding(.leading)
                    Text("Gendern lenkt von den Inhalten ab, indem es den Lesefluss behindert")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 350, height: 50)
                .background(.white)
                .cornerRadius(20)
                
                HStack{
                    Image(systemName: "minus")
                        .foregroundColor(Color("WrongAnswer"))
                        .padding(.leading)
                    Text("Gendern kann Barrieren schaffen")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 350, height: 50)
                .background(.white)
                .cornerRadius(20)
                
                HStack{
                    Image(systemName: "minus")
                        .foregroundColor(Color("WrongAnswer"))
                        .padding(.leading)
                    
                    Text("Fast zwei Drittel der Deutschen (65%) lehnen das Gendern ab.")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 350, height: 50)
                .background(.white)
                .cornerRadius(20)
                
            }
            .padding(.top)
            
        }
    }
}


struct GeneralInfoPageControl_Previews: PreviewProvider {
    static var previews: some View {
        GeneralInfoPageControl()
    }
}
