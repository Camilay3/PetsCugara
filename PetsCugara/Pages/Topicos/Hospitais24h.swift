//
//  Hospitais24h.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 01/12/22.
//

import SwiftUI

struct Hospitais24h: View {
	@Environment(\.dismiss) var dismiss
	
	var body: some View {
		PaginaTopico(topico: .hospitais24h)
	}
}

struct Hospitais24h_Previews: PreviewProvider {
	static var previews: some View {
		Hospitais24h()
	}
}
