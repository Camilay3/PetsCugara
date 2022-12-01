//
//  TutTwo.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 01/12/22.
//

import SwiftUI

struct TutTwo: View {
    var body: some View {
		NavigationView{
			GeometryReader{ proxy in
				ZStack{
					PaginaTopico(topico: .banho)
					
					Color("Cfundo").ignoresSafeArea()
						.opacity(0.8)
					
					VStack{
						Spacer()
						Text("- Aqui você pode escolher o que deseja ler conforme a categoria: gato ou cachorro")
							.foregroundColor(.black)
							.padding(30)
							.font(.custom("Pointfree", size: 17))
							.background(Color(.white))
							.cornerRadius(40)
						
						Text("- Retorne para a página principal para continuarmos o tour")
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

struct TutTwo_Previews: PreviewProvider {
    static var previews: some View {
        TutTwo()
    }
}
