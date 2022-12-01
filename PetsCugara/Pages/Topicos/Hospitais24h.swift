//
//  Hospitais24h.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 01/12/22.
//

import SwiftUI

struct Hospitais24h: View {
    var body: some View {
        NavigationView{
            GeometryReader{ proxy in
                ZStack{
                    Color("Cprimaria").ignoresSafeArea()
                    
                    VStack{
                        HStack{
                            Image(systemName: "pawprint.fill")
                            Text("Hospitais 24h")
                            Spacer()
                            NavigationLink(destination: HomePage(), label: {
                                Image(systemName: "house.fill")
                                    .foregroundColor(Color("Csecundaria"))
                            })
                        }
                        .padding(20)
                        .font(.custom("Pulang", size: 35))
                        .foregroundColor(Color("Cterciaria"))
                        .position(x: 190, y: 50)
                    }
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
