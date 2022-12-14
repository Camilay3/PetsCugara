//
//  Landmarkdetail.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 08/12/22.
//

import SwiftUI

struct Landmarkdetail: View {
    var landmark: Landmark
    var body: some View {
        ZStack{
            VStack {
                littlemap(coordinate: landmark.locationCoordinate, name: landmark.name, image: landmark.imageName)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 364)
					.shadow(radius: 7)
                litlleimage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading){
                    Text(landmark.name)
                        .font(.custom("Pulang", size: 30))
                        .foregroundColor(Color.black)
                        .lineLimit(nil)
                    Divider()
                    Text(landmark.address)
                        .font(.custom("Pulang", size: 20))
                        .foregroundColor(Color("Cterciaria"))
                    HStack{
                        Text(landmark.city + " - " + landmark.state)
                            .font(.custom("Pulang", size: 20))
                            .foregroundColor(Color("Cterciaria"))
                        Spacer()
                            .font(.custom("Pulang", size: 20))
                            .foregroundColor(Color("Cterciaria"))
                    }
                    Text("Bairro: " + landmark.bairro)
                        .font(.custom("Pulang", size: 20))
                        .foregroundColor(Color("Cterciaria"))
                    Text("CEP: " + landmark.cep)
                        .font(.custom("Pulang", size: 20))
                        .foregroundColor(Color("Cterciaria"))
                    Text("Contato: " + landmark.tele)
                        .font(.custom("Pulang", size: 20))
                        .foregroundColor(Color("Cterciaria"))
                }
                .padding()
                Spacer()
            }
            .background(Color("Cprimaria"))
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(Color("Cprimaria"))
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Landmarkdetail_Previews: PreviewProvider {
    static var previews: some View {
        Landmarkdetail(landmark: landmarks2[0])
    }
}
