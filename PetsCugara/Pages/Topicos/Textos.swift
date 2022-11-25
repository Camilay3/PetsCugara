//
//  Textos.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 22/11/22.
//

import SwiftUI
import Foundation

struct Topico {
	var nome :String
	var subtopicosDog :[String:String]
	var subtopicosCat :[String:String]

	init (_ nome :String, _ subtopicosDog :[String:String], _ subtopicosCat :[String:String]) {
		self.nome = nome
		self.subtopicosDog = subtopicosDog
		self.subtopicosCat = subtopicosCat
	}
}

struct Topicos {
	var t1 = Topico("Banho", ["Tutorial":"O banho deve ser com água em temperatura ambiente", "Alimentação":"É preferencial rações armazenadas de forma correta"], ["lorelore":"Lorem Ipsum dolor", "Alimentação":"Lorem ipsum dolor Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolor"])
//	var t2 = Topico("Passeio", ["Dicas":"Para não machucar seu pet, é preferencial uma coleira peitoral, evitando assim até puxões inesperados"])
}

struct Textos: View {
	
	
    var body: some View {
        Text("Área privada")
    }
}

struct Textos_Previews: PreviewProvider {
    static var previews: some View {
        Textos()
    }
}
