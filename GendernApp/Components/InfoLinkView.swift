//
//  InfoLinkView.swift
//  GendernApp
//
//  Created by Hannah Gürsching on 12.03.23.
//

import SwiftUI

struct InfoLinkView: View {
    var body: some View {
        VStack(){
            HStack{
                Image(systemName: "arrowshape.forward")
                    .foregroundColor(.black)
                
                Link("Geschickt gendern", destination: URL(string: "https://geschicktgendern.de/")!)
                    
                Spacer()
            }
            .frame(width: 350, height: 50)
            
            
            HStack{
                Image(systemName: "arrowshape.forward")
                    .foregroundColor(.black)
                
                Link("Gendern polarisiert auch in der jungen Generation", destination: URL(string: "https://www.spiegel.de/kultur/gendern-als-stolperfalle-gendern-polarisiert-auch-in-der-jungen-generation-a-2608c97f-9aeb-4859-b173-0d1a7a91e3d4")!)
                Spacer()
                    
            }
            .frame(width: 350, height: 60)
            
            HStack{
                
                Image(systemName: "arrowshape.forward")
                    .foregroundColor(.black)
                
                Link("Kritik an Gender-Sprache", destination: URL(string: "https://www.spiegel.de/kultur/kritik-an-gender-sprache-abenteuerliche-duden-kreationen-a-846e042d-dfa9-4077-a16d-9adb2f258322")!)
                Spacer()
                    
            }
            .frame(width: 350, height: 60)
            
            
            HStack{
                
                Image(systemName: "arrowshape.forward")
                    .foregroundColor(.black)
                
                Link("Aktuelles zum Thema Gendern bei Welt", destination: URL(string: "https://www.welt.de/themen/gendern/")!)
                Spacer()
                    
            }
            .frame(width: 350, height: 60)
            
            HStack{
                
                Image(systemName: "arrowshape.forward")
                    .foregroundColor(.black)
                
                Link("Aktuelles zum Thema Gendern bei FAZ", destination: URL(string: "https://www.faz.net/aktuell/gesellschaft/thema/gender")!)
                Spacer()
                    
            }
            .frame(width: 350, height: 60)
            
            HStack{
                
                Image(systemName: "arrowshape.forward")
                    .foregroundColor(.black)
                
                Link("Aktuelles zum Thema Gendern bei Spiegel", destination: URL(string: "https://www.spiegel.de/thema/gender/")!)
                Spacer()
                    
            }
            .frame(width: 350, height: 60)
        }
        .frame(width: 350, height: 450)
        .background(Color("Color 1"))
        .cornerRadius(10)
    }
}

struct InfoLinkView_Previews: PreviewProvider {
    static var previews: some View {
        InfoLinkView()
    }
}
