//
//  FirstPage.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 25/10/22.
//

import SwiftUI

struct FirstPage: View {
	@State var newUser :Bool = true
	
	var body: some View {
		NavigationView{
			GeometryReader{ proxy in
				ZStack {
					LinearGradient(colors: [Color("Cterciaria"), Color("Cprimaria"), Color("Cprimaria")], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
					
					VStack{
						Text("Pets Cugara")
							.bold()
							.font(.custom("Pulang", size: 40))
							.multilineTextAlignment(.center)
							.foregroundColor(.white)
							.padding(25)
						
						Spacer()
						
						HStack {
							Image("lina")
								.rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
								.padding(5)
							
							Text("- Bem vindo(a) ao Pets Cugara! Meu nome é Lina e vou ser sua guia! Gostaria de acessar o tutorial do nosso aplicativo?")
								.foregroundColor(Color("preto"))
								.font(.custom("pointfree", size: 18))
						}
						.padding(20)
						
						Spacer()
						
						VStack{
							NavigationLink(destination: TutOne(), label: {
								Text("Sim")
							})
							.padding(10)
							
							NavigationLink(destination: HomePage2(), label: {
								Text("Pular Tutorial")
							})
							.padding(10)
						}
						.foregroundColor(.black)
						.font(.custom("pointfree", size: 18))
						.buttonBorderShape(.capsule)
						.buttonStyle(.borderedProminent)
						.accentColor(.white)
						.padding(20)
					}
				}
			}
		}
    }
}
    
struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
