//
//  TutOne.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 03/11/22.
//

import SwiftUI

struct TutOne: View {
	
	@State var frames: [String: CGRect] = [:]
	@State var focusedFrameName = "banho"
	
	var body: some View {
		NavigationView{
			GeometryReader{ proxy in
				ZStack{
					Color("Cprimaria").ignoresSafeArea()
					VStack{
						HStack{
							Spacer()
							Text("Tópicos")
								.bold()
								.font(.custom("Pulang", size: 45))
								.multilineTextAlignment(.center)
								.foregroundColor(Color("Cterciaria"))
							Spacer()
						}
						ScrollView{
							
							VStack{
								HStack{
									NavigationLink(destination: TutTwo().navigationBarBackButtonHidden(true), label:{
										VStack{
											ZStack{
												Rectangle()
													.cornerRadius(21)
													.frame(width: 120, height: 120)
													.foregroundColor(.white)
													.shadow(color: .gray, radius: 10)
												Image("pet-shampoo")
													.resizable()
													.scaledToFit()
													.frame(width: 84, height: 84)
													.padding(.vertical, 14/10)
													.padding(.horizontal, 140/10)
												
											}
											Text("Banho")
												.bold()
												.font(.custom("pointfree", size: 18))
												.foregroundColor(Color("Cterciaria"))
										}
										
									}).padding(29)
										.saveFrame(in: $frames, name: "banho")
									Button(action:{}, label:{
										VStack{
											ZStack{
												Rectangle()
													.cornerRadius(21)
													.frame(width: 120, height: 120)
													.foregroundColor(.white)
													.shadow(color: .gray, radius: 10)
												Image("pet-bowl-2-2")
													.resizable()
													.scaledToFit()
													.frame(width: 80, height: 80)
													.padding(.vertical, 14/10)
													.padding(.horizontal, 140/10)
											}
											Text("Alimentação")
												.bold()
												.font(.custom("pointfree", size: 18))
												.foregroundColor(Color("Cterciaria"))
										}
										
									})
									.padding(29)
								}
								HStack{
									Button(action:{}, label: {
										VStack{
											ZStack{
												Rectangle()
													.cornerRadius(21)
													.frame(width: 120, height: 120)
													.foregroundColor(.white)
													.shadow(color: .gray, radius: 10)
												Image("vaccine-4")
													.resizable()
													.scaledToFit()
													.frame(width: 80, height: 80)
													.padding(.vertical, 14/10)
													.padding(.horizontal, 140/10)
											}
											Text("Vacinação")
												.bold()
												.font(.custom("pointfree", size: 18))
												.foregroundColor(Color("Cterciaria"))
										}
										
									}).padding(29)
									Button(action:{}, label:{
										VStack{
											ZStack{
												Rectangle()
													.cornerRadius(21)
													.frame(width: 120, height: 120)
													.foregroundColor(.white)
													.shadow(color: .gray, radius: 10)
												Image("warning-2")
													.resizable()
													.scaledToFit()
													.frame(width: 75, height: 75)
													.padding(.vertical, 14/10)
													.padding(.horizontal, 140/10)
													.foregroundColor(Color("Csecundaria"))
											}
											Text("Emergência")
												.bold()
												.font(.custom("pointfree", size: 18))
												.foregroundColor(Color("Cterciaria"))
										}
										
									}).padding(29)
								}
								HStack{
									Button(action:{}, label:{
										VStack{
											ZStack{
												Rectangle()
													.cornerRadius(21)
													.frame(width: 120, height: 120)
													.foregroundColor(.white)
													.shadow(color: .gray, radius: 10)
												Image("dog-2")
													.resizable()
													.scaledToFit()
													.frame(width: 95, height: 95)
													.padding(.vertical, 14/10)
													.padding(.horizontal, 140/10)
											}
											Text("Passeio")
												.bold()
												.font(.custom("pointfree", size: 18))
												.foregroundColor(Color("Cterciaria"))
										}
									}).padding(29)
									Button(action:{}, label:{
										VStack{
											ZStack{
												Rectangle()
													.cornerRadius(21)
													.frame(width: 120, height: 120)
													.foregroundColor(.white)
													.shadow(color: .gray, radius: 10)
												Image("pet-shop-7")
													.resizable()
													.scaledToFit()
													.frame(width: 80, height: 80)
													.padding(.vertical, 14/10)
													.padding(.horizontal, 140/10)
											}
											Text("Hospitais 24h")
												.bold()
												.font(.custom("pointfree", size: 18))
												.foregroundColor(Color("Cterciaria"))
										}
										
									}).padding(29)
								}
							}
						}
					}
					.overlay {
						FocusView(frame: frames[focusedFrameName])
					}
					
					VStack{
						Spacer()
						Text("- Bem vindo(a) ao tutorial! Essa é a página principal, onde você pode acessar os tópicos. Clique em banho para começar.")
							.foregroundColor(.black)
							.padding(30)
							.font(.custom("Pointfree", size: 17))
							.background(Color(.white))
							.cornerRadius(40)
						
						Image("lina")
							.scaleEffect(1.2)
							.padding(.vertical, 10)
						
					}.padding(.horizontal, 20)
				}
			}
		}
	}
}

struct TutOne_Previews: PreviewProvider {
	static var previews: some View {
		TutOne()
	}
}
