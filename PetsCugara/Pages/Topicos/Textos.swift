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
	var subtopicos :[String:String]

	init (_ nome :String, _ subtopicos :[String:String]) {
		self.nome = nome
		self.subtopicos = subtopicos
	}

	func testar() -> Void {
		print("Bem vindo ao tópico \(nome). Os subtópicos são: \n")
		for (key, _) in subtopicos {
			print("- \(key)")
			print("\"\(subtopicos[key]!)\"\n")
		}
		return print("Fim!")
	}
}

struct Topicos {
	var t1 = Topico("Banho", ["Tutorial":"O banho deve ser com água em temperatura ambiente", "Alimentação":"É preferencial rações armazenadas de forma correta"])
	var t2 = Topico("Passeio", ["Dicas":"Para não machucar seu pet, é preferencial uma coleira peitoral, evitando assim até puxões inesperados"])
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
