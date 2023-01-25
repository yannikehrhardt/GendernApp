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
                    Text("Argument 1")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 300, height: 40)
                .background(.white)
                .cornerRadius(30)
                
                HStack{
                    Image(systemName: "plus")
                        .foregroundColor(Color("CorrectAnswer"))
                        .padding(.leading)
                    Text("Argument 2")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 300, height: 40)
                .background(.white)
                .cornerRadius(30)
                
                HStack{
                    Image(systemName: "plus")
                        .foregroundColor(Color("CorrectAnswer"))
                        .padding(.leading)
                    Text("Argument 3")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 300, height: 40)
                .background(.white)
                .cornerRadius(30)
                
                HStack{
                    Image(systemName: "plus")
                        .foregroundColor(Color("CorrectAnswer"))
                        .padding(.leading)
                    Text("Argument 4")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 300, height: 40)
                .background(.white)
                .cornerRadius(30)
                
                HStack{
                    Image(systemName: "plus")
                        .foregroundColor(Color("CorrectAnswer"))
                        .padding(.leading)
                    Text("Argument 5")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 300, height: 40)
                .background(.white)
                .cornerRadius(30)
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
                    Text("Argument 1")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 300, height: 40)
                .background(.white)
                .cornerRadius(30)
                
                HStack{
                    Image(systemName: "minus")
                        .foregroundColor(Color("WrongAnswer"))
                        .padding(.leading)
                    Text("Argument 2")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 300, height: 40)
                .background(.white)
                .cornerRadius(30)
                
                HStack{
                    Image(systemName: "minus")
                        .foregroundColor(Color("WrongAnswer"))
                        .padding(.leading)
                    Text("Argument 3")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 300, height: 40)
                .background(.white)
                .cornerRadius(30)
                
                HStack{
                    Image(systemName: "minus")
                        .foregroundColor(Color("WrongAnswer"))
                        .padding(.leading)
                    
                    Text("Argument 4")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 300, height: 40)
                .background(.white)
                .cornerRadius(30)
                
                HStack{
                    Image(systemName: "minus")
                        .foregroundColor(Color("WrongAnswer"))
                        .padding(.leading)
                    Text("Argument 5")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(width: 300, height: 40)
                .background(.white)
                .cornerRadius(30)
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
