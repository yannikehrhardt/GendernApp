//
//  GeneralGenderInfo.swift
//  GendernApp
//
//  Created by Yannik Ehrhardt on 19.01.23.
//

import SwiftUI

struct GeneralGenderInfo: View {
    
    @State var showBadges = 0
    var body: some View {
        VStack{
            VStack{
                Picker("Welchen Spielerspezifischen Infos möchtest du sehen?", selection: $showBadges) {
                    Text("Pro/Contra").tag(0)
                    Text("Links").tag(1)
                }
                .pickerStyle(.segmented)
            }
            .padding(.bottom)
            
            if(showBadges == 0) {
                GeneralInfoPageControl()
            }
            else if (showBadges == 1){
                VStack{
                    
                    Text("hier sollen zukünftig Links zu spannenden Artikeln plaziert werden")
                    
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("Backgrounds App"))
    }
    
}


struct GeneralGenderInfo_Previews: PreviewProvider {
    static var previews: some View {
        GeneralGenderInfo()
    }
}
