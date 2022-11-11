//
//  HomePage.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 25/10/22.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
		ZStack{
			ZStack{
				HStack{
					Text("Tópicos")
						.font(.custom("Pulang", size: 35))
						.foregroundColor(Cor.Cterciaria)
						.bold()
						.padding(5)
						
					Spacer()
					
					// Transformar em botão
					Image(systemName: "exclamationmark.triangle.fill")
						.foregroundColor(Cor.Cterciaria)
						.scaleEffect(2)
						.frame(width: 50, height: 40)
						.padding(10)
					
				}.position(x: 200, y: 100)
			}
			
			VStack{
				HStack{
					Button("Banho"){
						print("certo")
					}
						.foregroundColor(.black)
						.font(.custom("pointfree", size: 18))
					
				}.position(x: 80, y: 230)
			}
		}.ignoresSafeArea()
	}
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
