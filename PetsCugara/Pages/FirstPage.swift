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
            ZStack {
				LinearGradient(colors: [Cor.Cterciaria, Cor.Cprimaria, Cor.Cprimaria], startPoint: .top, endPoint: .bottom)
                
                ZStack{
                    Text("Pets Cugara")
                        .bold()
                        .font(.custom("Pulang", size: 40))
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 227)
                        .position(x: 400/2, y: 235/2)
                        .foregroundColor(.white)
                }
                
                VStack{
                    HStack {
                        Image("lina")
                            .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                            .frame(width: 60, height: 50)
                        
                        Text("- Bem vindo(a) ao Pets Cugara! Meu nome é Lina e vou ser seu guia! Gostaria de acessar o tutorial do nosso aplicativo?")
                            .foregroundColor(.black)
                            .padding(15)
                            .font(.custom("pointfree", size: 18))
                    }
                    .position(x: proxy.size.width/2, y: proxy.size.height/2)
                    
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
                    .accentColor(Cor.Csecundaria)
                    .position(x: proxy.size.width/2, y: proxy.size.height/3)
                }
            }.ignoresSafeArea()
        }
    }
}
    
struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
