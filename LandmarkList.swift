//
//  LandmarkLink.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 08/12/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks2) { landmark in
                NavigationLink{
                    Landmarkdetail(landmark: landmark)
                } label:{
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Hospitais 24 horas")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
