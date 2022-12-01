//
//  landmarks.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 01/12/22.
//

import SwiftUI
import MapKit

struct landmarks: View {
    var body: some View {
        VStack{
            littlemap()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            litlleimage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text("Clínica Veterinária Etave")
                    .font(.title)
                    .foregroundColor(.green)
                HStack{
                    Text("Bairro de Fátima")
                        .font(.subheadline)
                    Spacer()
                    Text("Fortaleza - Ceará")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("Sobre a clínica Etave:")
                    .font(.title3)
            }
            .padding()
            
            Spacer()
        }
    }
}
struct landmarks_Previews: PreviewProvider {
    static var previews: some View {
        landmarks()
    }
}

