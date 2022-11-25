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
		topicos.t1.subtopicosDog[selectedKey] ?? ""
	}
	
	var body: some View {
		//		Falta o Geometry
		//		Se for cachorro, esse código, se for gato, outro
		//colocar td dentro de um if else pra gato e cachorro
		//		Uma view template para todas as páginas só mudando a variável t1?
		NavigationView{
			ZStack{
				Color("Cprimaria").ignoresSafeArea()
				
				VStack{
					HStack{
						//head
						Image(systemName: "pawprint.fill")
						Text("\(topicos.t1.nome)")
						Spacer()
						NavigationLink(destination: HomePage().navigationBarBackButtonHidden(true), label: {
							Image(systemName: "house.fill")
								.foregroundColor(Color("Csecundaria"))
						})
					}
					.padding(20)
					.font(.custom("Pulang", size: 35))
					.foregroundColor(Color("Cterciaria"))
					
					Spacer()
					
					VStack{
						//text
						Picker("Escolha um tópico", selection: $selectedKey) {
							ForEach(Array(topicos.t1.subtopicosDog.keys), id: \.self) { key in
								VStack(alignment: .leading) {
									Text(key)
								}
							}
						}.accentColor(Color("Cterciaria"))
							.background(Color(.white))
							.cornerRadius(10)
							.padding(20)
						
						Text(selectedValue)
					}.font(.custom("pointfree", size: 16)).padding(30)
					
					Spacer()
						.toolbar {
							ToolbarItem(placement: .bottomBar) {
								HStack{
									Button(action: {
										// acao aqui
									}, label: {
										Image("dog")
										
									})
									.padding(10)
									.padding(.horizontal, 60)
									
									Button(action: {
										// acao aqui
									}, label: {
										// Se cachorro estiver clicado, colocar opacidade
										Image("cat")
											.opacity(0.2)
									})
									.padding(10)
									.padding(.horizontal, 60)
								}.background(.white)
									.cornerRadius(20)
									.foregroundColor(Color("Cterciaria"))
									.scaleEffect(0.4)
							}
						}
				}
			}
		}
	}
}

struct Banho_Previews: PreviewProvider {
	static var previews: some View {
		Banho()
	}
}
