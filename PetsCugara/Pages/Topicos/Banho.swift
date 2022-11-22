//
//  Banho.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 17/11/22.
//

import SwiftUI

struct Banho: View {
	@State private var selectedKey = "Tutorial"
	let topicos = Topicos()
	var selectedValue: String {
		topicos.t1.subtopicos[selectedKey] ?? ""
	}
	
    var body: some View {
//		Falta o Geometry
		NavigationView{
			ZStack{
				Color("Cprimaria").ignoresSafeArea()
				
				VStack{
					HStack{
						//head
						Image(systemName: "pawprint.fill")
						Text("\(topicos.t1.nome)")
						Image(systemName: "house.fill")
					}
					
					VStack{
						//text
						Picker("Escolha um tópico", selection: $selectedKey) {
							ForEach(Array(topicos.t1.subtopicos.keys), id: \.self) { key in
								VStack(alignment: .leading) {
									Text(key)
								}
								.padding()
							}
						}
						Text(selectedValue)
					}
					
					HStack{
						//toolbar
					}
				}
			}
		}
    }
}
//colocar td dentro de um if else pra gato e cachorro
struct Banho_Previews: PreviewProvider {
    static var previews: some View {
        Banho()
    }
}
