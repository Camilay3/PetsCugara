//
//  LandmarkLink.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 08/12/22.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            ZStack{
                    Color("Cprimaria")
                        .ignoresSafeArea()
                VStack{
                    HStack{
                        Image(systemName: "pawprint.fill")
                        Text("Hospitais 24h")
                        Spacer()
                        Button { dismiss()
                        } label: {
                            Image(systemName: "house.fill")
                                .foregroundColor(Color("Csecundaria"))
                        }
                    }
                    .padding(20)
                    .font(.custom("Pulang", size: 35))
                    .foregroundColor(Color("Cterciaria"))
                    List(landmarks2) { landmark in
                        NavigationLink{
                            Landmarkdetail(landmark: landmark)
                        } label:{
                            LandmarkRow(landmark: landmark)
                        }
                    }
                    .scrollContentBackground(.hidden)
                    
                }
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
