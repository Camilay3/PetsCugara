//
//  landmarks.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 01/12/22.
//

import SwiftUI

struct landmarks: View {
    var body: some View {
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
        }
        .padding()
    }
}
struct landmarks_Previews: PreviewProvider {
    static var previews: some View {
        landmarks()
    }
}

