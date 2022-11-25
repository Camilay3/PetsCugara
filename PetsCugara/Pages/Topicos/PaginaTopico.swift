//
//  Banho.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 17/11/22.
//

import SwiftUI

struct PaginaTopico: View {
	let topico: Topico
	
	@State private var selectedKey = ""
	@State private var selectedDog = true
	
	var selectedValue: String {
		if (selectedDog == true) {
			return topico.subtopicosDog[selectedKey] ?? "Selecione um subtópico"
		} else {
			return topico.subtopicosCat[selectedKey] ?? "Selecione um subtópico"
		}
	}
	
	var body: some View {
		NavigationView{
			ZStack{
				Color("Cprimaria").ignoresSafeArea()
				
				VStack{
					HStack{
						Image(systemName: "pawprint.fill")
						Text("\(topico.nome)")
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
					
					if (selectedDog == true) {
						VStack{
							Picker("Escolha um tópico", selection: $selectedKey) {
								ForEach(Array(topico.subtopicosDog.keys), id: \.self) { key in
									VStack(alignment: .leading) {
										Text(key)
									}
								}
							}.accentColor(Color("Cterciaria"))
								.background(Color(.white))
								.cornerRadius(10)
								.padding(20)
							
							Text(selectedValue)
						}
						.font(.custom("pointfree", size: 16)).padding(30)
						.onAppear {
							selectedKey = topico.subtopicosDog.keys.first!
						}
						
						Spacer()
							.toolbar {
								ToolbarItem(placement: .bottomBar) {
									HStack{
										Button(action: {}, label: {
											Image("dog")
										})
										.padding(10)
										.padding(.horizontal, 60)
										
										Button(action: {
											selectedDog = !selectedDog
										}, label: {
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
					} else {
						VStack{
							Picker("Escolha um tópico", selection: $selectedKey) {
								ForEach(Array(topico.subtopicosCat.keys), id: \.self) { key in
									VStack(alignment: .leading) {
										Text(key)
									}
								}
							}.accentColor(Color("Cterciaria"))
								.background(Color(.white))
								.cornerRadius(10)
								.padding(20)
							
							Text(selectedValue)
						}
						.font(.custom("pointfree", size: 16)).padding(30)
						.onAppear {
							selectedKey = topico.subtopicosCat.keys.first!
						}
						
						Spacer()
							.toolbar {
								ToolbarItem(placement: .bottomBar) {
									HStack{
										Button(action: {
											selectedDog = !selectedDog
										}, label: {
											Image("dog")
												.opacity(0.2)
											
										})
										.padding(10)
										.padding(.horizontal, 60)
										
										Button(action: {}, label: {
											Image("cat")
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
}

struct PaginaTopico_Previews: PreviewProvider {
	static var previews: some View {
		PaginaTopico(topico: .banho)
	}
}
