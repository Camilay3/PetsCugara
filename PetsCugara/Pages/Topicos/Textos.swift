//
//  Textos.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 22/11/22.
//

import SwiftUI
import Foundation

struct Topico {
	
	static var banho = Topico("Banho", ["Tutorial":"O banho deve ser com água em temperatura ambiente", "Alimentação":"É preferencial rações armazenadas de forma correta"], ["lorelore":"Lorem Ipsum dolor", "Alimentação":"Lorem ipsum dolor Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolor"])
	
	static var alimentação = Topico("Alimentação", ["Tutorial":"O banho deve ser com água em temperatura ambiente", "Alimentação":"É preferencial rações armazenadas de forma correta"], ["lorelore":"Lorem Ipsum dolor", "Alimentação":"Lorem ipsum dolor Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolor"])
	
	static var vacinação = Topico("Vacinação", ["Tutorial":"O banho deve ser com água em temperatura ambiente", "Alimentação":"É preferencial rações armazenadas de forma correta"], ["lorelore":"Lorem Ipsum dolor", "Alimentação":"Lorem ipsum dolor Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolor"])

	static var curiosidades = Topico("Curiosidades", ["Tutorial":"O banho deve ser com água em temperatura ambiente", "Alimentação":"É preferencial rações armazenadas de forma correta"], ["lorelore":"Lorem Ipsum dolor", "Alimentação":"Lorem ipsum dolor Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolor"])

	static var passeio = Topico("Passeio", ["Tutorial":"O banho deve ser com água em temperatura ambiente", "Alimentação":"É preferencial rações armazenadas de forma correta"], ["lorelore":"Lorem Ipsum dolor", "Alimentação":"Lorem ipsum dolor Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolor"])

	static var petShop = Topico("Pet Shop", ["Tutorial":"O banho deve ser com água em temperatura ambiente", "Alimentação":"É preferencial rações armazenadas de forma correta"], ["lorelore":"Lorem Ipsum dolor", "Alimentação":"Lorem ipsum dolor Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolor"])

	
	var nome :String
	var subtopicosDog :[String:String]
	var subtopicosCat :[String:String]

	init (_ nome :String, _ subtopicosDog :[String:String], _ subtopicosCat :[String:String]) {
		self.nome = nome
		self.subtopicosDog = subtopicosDog
		self.subtopicosCat = subtopicosCat
	}
}
