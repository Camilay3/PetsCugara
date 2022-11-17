//
//  FirstPage.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 25/10/22.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        GeometryReader{ proxy in
//			ajustar cálculos
            ZStack {
				LinearGradient(colors: [Cor.Cterciaria, Cor.Cprimaria, Cor.Cprimaria], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                VStack{
					Text("Pets Cugara")
						.bold()
						.font(.custom("Pulang", size: 40))
						.multilineTextAlignment(.center)
						.foregroundColor(.white)
						.padding(25)
					
					Spacer()
					
                    HStack {
                        Image("lina")
                            .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                            .frame(width: 60, height: 50)
							.padding(5)
                        
                        Text("- Bem vindo(a) ao Pets Cugara! Meu nome é Lina e vou ser seu guia! Gostaria de acessar o tutorial do nosso aplicativo?")
                            .foregroundColor(.black)
                            .font(.custom("pointfree", size: 18))
                    }
						.padding(20)
                    
					Spacer()
					
                    VStack{
                        Button("Sim") {}
                            .foregroundColor(.black)
                            .padding(10)
                            .font(.custom("pointfree", size: 18))
                        
                        Button("Pular Tutorial") {}
                            .foregroundColor(.black)
                            .padding(10)
                            .font(.custom("pointfree", size: 18))
                    }
						.buttonBorderShape(.capsule)
						.buttonStyle(.borderedProminent)
						.accentColor(.white)
						.padding(20)
				}
            }
        }
    }
}
    
struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
