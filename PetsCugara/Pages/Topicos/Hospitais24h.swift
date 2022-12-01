//
//  Hospitais24h.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 01/12/22.
//

import SwiftUI

struct Hospitais24h: View {
    var body: some View {
        GeometryReader{ proxy in
            ZStack{
                Color("Cprimaria").ignoresSafeArea()
                VStack{
                    HStack{
                        Image(systemName: "pawprint.fill")
                        Text("Hospitais 24h")
                    }.padding(20)
                    .font(.custom("Pulang", size: 35))
                    .foregroundColor(Color("Cterciaria"))
                    .padding(.vertical, 600/1000)
                    .padding(.horizontal, 200/10)
                }
            }
        }
    }
}
struct Hospitais24h_Previews: PreviewProvider {
    static var previews: some View {
        Hospitais24h()
    }
}
