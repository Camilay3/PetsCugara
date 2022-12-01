//
//  litlleimage.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 01/12/22.
//

import SwiftUI

struct litlleimage: View {
    var body: some View {
        Image("etave")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct litlleimage_Previews: PreviewProvider {
    static var previews: some View {
        litlleimage()
    }
}
