//
//  litlleimage.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 01/12/22.
//

import SwiftUI

struct litlleimage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: 320, height: 320)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct litlleimage_Previews: PreviewProvider {
    static var previews: some View {
        litlleimage(image: Image("etave"))
    }
}
