//
//  FirstPage.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 25/10/22..
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(red: 51 / 255, green: 27 / 255, blue: 9 / 255), Color(red: 145 / 255, green: 84 / 255, blue: 40 / 255)], startPoint: .top, endPoint: .bottom)
            
            ZStack{
                
                Text("Pets Cugara")
                    .bold()
                    .font(.custom("Pulang", size: 40))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 227)
                    .position(x: 400/2, y: 235/2)
                    .foregroundColor(Color(red: 255/255, green: 183/255, blue: 98/255))
            }
            
            VStack{
                HStack {
                    Image("lina")
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                        .frame(width: 60, height: 50)
                    
                    Text("- Bem vindo(a) ao Pets Cugara! Meu nome é Lina e vou ser seu guia! Gostaria de acessar o tutorial do nosso aplicativo?")
                        .foregroundColor(.white)
                        .padding(15)
                        .font(.custom("pointfree", size: 18))
                }
                
                Button("Sim") {}
                    .foregroundColor(Color(red: 51 / 255, green: 27 / 255, blue: 9 / 255))
                    .padding(10)
                    .font(.custom("pointfree", size: 18))
                
                Button("Pular Tutorial") {}
                    .foregroundColor(Color(red: 51 / 255, green: 27 / 255, blue: 9 / 255))
                    .padding(10)
                    .font(.custom("pointfree", size: 18))
                
            }
            .buttonStyle(.borderedProminent)
            .accentColor(Color(red: 255/255, green: 183/255, blue: 98/255))
            
        }.ignoresSafeArea()
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
