//
//  GeneralGenderInfo.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 19.01.23.
//

import SwiftUI

struct GeneralGenderInfo: View {
    //diese Variable gibt an, ob die Pro/Contra-Liste oder die Links angezeigt werden
    @State var showArguments = 0
    var body: some View {
        VStack{
            
            //Picker verändert Variable showArguments
            Picker("Welchen Spielerspezifischen Infos möchtest du sehen?", selection: $showArguments) {
                Text("Pro/Contra").tag(0)
                Text("Links").tag(1)
                }
            .pickerStyle(.segmented)
            .padding(.bottom)
                
            // für showArguments == 0 werden die Argumnete aufgezeigt
            if(showArguments == 0) {
                GeneralInfoPageControl()
            }
            //für showArguments == 1 werden die Links angezeigt
            else if (showArguments == 1){
               InfoLinkView()
               
            }
            Spacer()
        }
        .frame(width: 400, height: 710)
        .background(Image("Backgrounds App"))
    }
    
}


struct GeneralGenderInfo_Previews: PreviewProvider {
    static var previews: some View {
        GeneralGenderInfo()
    }
}
