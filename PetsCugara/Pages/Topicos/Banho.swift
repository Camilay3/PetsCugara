//
//  Banho.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 17/11/22.
//

import SwiftUI

struct Banho: View {
    var body: some View {
//		Falta o Geometry
		NavigationView{
			ZStack{
				Color("Cprimaria").ignoresSafeArea()
				
				VStack{
					HStack{
						//head
						Image(systemName: "pawprint.fill")
						Text("Banho")
						Image(systemName: "house.fill")
					}
					
					VStack{
						//text
					}
					
					HStack{
						//toolbar
					}
				}
			}
		}
    }
}
//colocar td dentro de um if else
struct Banho_Previews: PreviewProvider {
    static var previews: some View {
        Banho()
    }
}
