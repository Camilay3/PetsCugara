//
//  Landmark>.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 01/12/22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            Image("etave")
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks2[1])
    }
}
