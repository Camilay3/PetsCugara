//
//  Testing.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 17/11/22.
//

import SwiftUI

struct Tópicos_testando: View {
    var body: some View {
        GeometryReader{ proxy in
            ZStack{
                //Cor.Cprimaria
                ZStack{
                    Text("Tópicos")
                        .bold()
                        .font(.custom("Pulang", size: 40))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 55 / 255, green: 63 / 255, blue: 71 / 255))
                        .frame(width: 400, height: 227)
                        .position(x: 400/2, y: 235/2)
                }
                VStack{
                    HStack{
                        Image(systemName: "exclamationmark.triangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .position(x: 345, y: 235/2)
                            .foregroundColor(Color.green)
                    }
                }
            }.ignoresSafeArea()
            
        }
    }
}

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        Tópicos_testando()
    }
}
