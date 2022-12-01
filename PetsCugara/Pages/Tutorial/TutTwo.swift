//
//  TutTwo.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 01/12/22.
//

import SwiftUI

struct TutTwo: View {
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
	
	@State var frames: [String: CGRect] = [:]
	@State var focusedFrameName = "home"
	
	var body: some View {
		NavigationView{
			GeometryReader{ proxy in
				ZStack{
					Color("Cprimaria").ignoresSafeArea()
					
					VStack{
						HStack{
							Image(systemName: "pawprint.fill")
							Text("\(topico.nome)")
							Spacer()
							if selectedDog == true {
								Button(action:{}, label: {
									Image(systemName: "house.fill")
										.foregroundColor(Color("Csecundaria"))
										.padding(10)
								})
							} else {
								NavigationLink(destination: HomePage().navigationBarBackButtonHidden(true), label: {
									Image(systemName: "house.fill")
										.foregroundColor(Color("Csecundaria"))
										.padding(10)
								}).saveFrame(in: $frames, name: "home")
							}
						}
						.padding(20)
						.font(.custom("Pulang", size: 35))
						.foregroundColor(Color("Cterciaria"))
						
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
								
								Spacer()
								
								ScrollView {
									Text(selectedValue)
								}
								
								Spacer()
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
								
								Spacer()
								
								ScrollView {
									Text(selectedValue)
								}
								
								Spacer()
							}
							.font(.custom("pointfree", size: 16)).padding(30)
							.onAppear {
								selectedKey = topico.subtopicosCat.keys.first!
							}
							
							Spacer()
								.toolbar {
									ToolbarItem(placement: .bottomBar) {
										HStack{
											Button(action: {}, label: {
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
					.overlay {
						FocusView(frame: frames[focusedFrameName])
					}
					
					VStack{
						Spacer()
						if selectedDog == true {
							Text("- Aqui você pode escolher o que deseja ler conforme a categoria: gato ou cachorro")
								.foregroundColor(.black)
								.padding(30)
								.font(.custom("Pointfree", size: 17))
								.background(Color(.white))
								.cornerRadius(40)
						} else {
							Text("- Muito obrigado pelo tempo! Retorne à página principal. Até a próxima!")
								.foregroundColor(.black)
								.padding(30)
								.font(.custom("Pointfree", size: 17))
								.background(Color(.white))
								.cornerRadius(40)
						}
						
						Image("lina")
							.scaleEffect(1.2)
							.padding(.vertical, 10)
					}.padding(.horizontal, 20)
				}
			}
		}
	}
}
struct TutTwo_Previews: PreviewProvider {
    static var previews: some View {
		TutTwo(topico: .banho)
    }
}
