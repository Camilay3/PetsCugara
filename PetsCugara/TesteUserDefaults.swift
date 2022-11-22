//
//  TesteUserDefaults.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 22/11/22.
//

import SwiftUI

struct TesteUserDefaults: View {
	@State var novo = UserDefaults.standard.integer(forKey: "primeiroAcesso")
	@State var tap = 0
	
	
    var body: some View {
		ZStack{
			Button("Clique"){
				print("a")
				tap += 1
				print(tap)
				UserDefaults.standard.set(novo, forKey: "primeiroAcesso")
			}
		}
	}
}

struct TesteUserDefaults_Previews: PreviewProvider {
    static var previews: some View {
        TesteUserDefaults()
    }
}
