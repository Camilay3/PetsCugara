//
//  Cachorro.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 25/10/22.
//

import SwiftUI

struct Cachorro: View {
    var body: some View {
		ZStack {
			Color(red: 145 / 255, green: 84 / 255, blue: 40 / 255)
		}.ignoresSafeArea()
    }
}

struct Cachorro_Previews: PreviewProvider {
    static var previews: some View {
        Cachorro()
    }
}
