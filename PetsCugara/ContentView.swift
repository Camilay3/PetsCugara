//
//  ContentView.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 25/10/22.
//

import SwiftUI

struct ContentView: View {
	@State var primeiroAcesso = UserDefaults.standard.bool(forKey: "primeiroAcesso")
	
    var body: some View {
		ZStack {
			if !primeiroAcesso {
				FirstPage()
					.onAppear {
						UserDefaults.standard.set(true, forKey: "primeiroAcesso")
					}
			} else {
				HomePage()
			}
		}
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
