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
			Color(red: 145 / 255, green: 84 / 255, blue: 40 / 255)
			
			ZStack{
				Rectangle()
					.frame(width: 400, height: 180)
					.foregroundColor(Color(red: 255 / 255, green: 223 / 255, blue: 200 / 255))
					.shadow(radius: 10)
					.position(x: 200, y: 90)
				
				HStack{
					Image("mascote")
						.scaleEffect(0.5)
						.frame(width: 60, height: 100)
						.padding(10)
	
					
					Text("Tópicos")
						.font(.custom("Pulang", size: 35))
						.foregroundColor(Color(red: 68 / 255, green: 176 / 255, blue: 255 / 255))
						.bold()
						.padding(5)
						
					Spacer()
					
					// Transformar em botão
					Image(systemName: "exclamationmark.triangle.fill")
						.foregroundColor(Color(red: 51 / 255, green: 27 / 255, blue: 9 / 255))
						.scaleEffect(2)
						.frame(width: 50, height: 40)
						.padding(10)
					
				}.position(x: 200, y: 100)
			}
			
			VStack{
				HStack{
					Image(systemName: "pawprint.fill")
						.foregroundColor(Color(red: 255/255, green: 183/255, blue: 98/255))
						.frame(width: 50, height: 50)
						.scaleEffect(2.5)
						.padding(20)
					
					Button("Banho"){
						print("certo")
					}
						.foregroundColor(.white)
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