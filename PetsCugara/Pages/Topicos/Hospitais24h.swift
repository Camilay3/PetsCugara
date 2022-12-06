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
		NavigationView{
			ZStack{
				Color("Cprimaria").ignoresSafeArea()
				
				VStack{
					HStack{
						Image(systemName: "pawprint.fill")
						Text("Hospitais 24h")
						Spacer()
						Button {
							dismiss()
						} label: {
							Image(systemName: "house.fill")
								.foregroundColor(Color("Csecundaria"))
						}
					}
					.padding(20)
					.font(.custom("Pulang", size: 35))
					.foregroundColor(Color("Cterciaria"))
					
					
						VStack{
							Text("Mapa aqui")
							
							Spacer()
							
							ScrollView {
								Text("Lista aqui")
							}
							
							Spacer()
						}
						.font(.custom("pointfree", size: 16)).padding(30)
				}
			}
		}
	}
}

struct Hospitais24h_Previews: PreviewProvider {
	static var previews: some View {
		Hospitais24h()
	}
}
