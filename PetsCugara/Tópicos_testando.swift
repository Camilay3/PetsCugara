//
//  Testing.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 17/11/22.
//

import SwiftUI

struct Tópicos_testando: View {
    var body: some View {
        GeometryReader{ proxy in
            ZStack{
                Color("Cprimaria").ignoresSafeArea()
                VStack{
                    ZStack{
                        Text("Tópicos")
                            .bold()
                            .font(.custom("Pulang", size: 45))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 55 / 255, green: 63 / 255, blue: 71 / 255))
                            .frame(width: 400, height: 227)
                            .position(x: 385/2, y: 90/2)
                        HStack{
                            Image(systemName: "exclamationmark.triangle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .position(x: 340, y: 49)
                                .foregroundColor(Color(red: 107 / 255, green: 144 / 255, blue: 128 / 255))
                            
                            //                        }
                        }
                        VStack{
                            HStack{
                                Button(
                                    action: {
                                        print("Banho")
                                    },
                                    
                                    label:{
                                        VStack{
                                            Image("pet-shampoo")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 93, height: 93)
                                                .background(Color.white)
                                                .padding(.vertical, 140/10)
                                                .padding(.horizontal, 140/10)
                                                .foregroundColor(.black)
                                                .cornerRadius(42/2)
                                            Text("Banho")
                                                .bold()
                                                .font(.custom("pointfree", size: 18))
                                        }
                                        
                                    })
                                Button(
                                    action: {
                                        print("Banho")
                                    },
                                    
                                    label:{
                                        VStack{
                                            Image("pet-bowl-2-2")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 93, height: 93)
                                                .background(Color.white)
                                                .padding(.vertical, 140/10)
                                                .padding(.horizontal, 140/10)
                                                .foregroundColor(.black)
                                                .cornerRadius(42/2)
                                            Text("Alimentação")
                                                .bold()
                                                .font(.custom("pointfree", size: 18))
                                        }
                                        
                                    })
                            }
                            HStack{
                                Button(
                                    action: {
                                        print("Banho")
                                    },
                                    
                                    label:{
                                        VStack{
                                            Image("vaccine-4")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 93, height: 93)
                                                .background(Color.white)
                                                .padding(.vertical, 140/10)
                                                .padding(.horizontal, 140/10)
                                                .foregroundColor(.black)
                                                .cornerRadius(42/2)
                                            Text("Vacinação")
                                                .bold()
                                                .font(.custom("pointfree", size: 18))
                                        }
                                        
                                    })
                                Button(
                                    action: {
                                        print("Banho")
                                    },
                                    
                                    label:{
                                        VStack{
                                            Image("ponto-de-interrogacao")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 93, height: 93)
                                                .background(Color.white)
                                                .padding(.vertical, 140/10)
                                                .padding(.horizontal, 140/10)
                                                .foregroundColor(.black)
                                                .cornerRadius(42/2)
                                            Text("Curiosidades")
                                                .bold()
                                                .font(.custom("pointfree", size: 18))
                                        }
                                        
                                    })
                            }
                            HStack{
                                Button(
                                    action: {
                                        print("Banho")
                                    },
                                    
                                    label:{
                                        VStack{
                                            Image("vaccine-4")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 93, height: 93)
                                                .background(Color.white)
                                                .padding(.vertical, 140/10)
                                                .padding(.horizontal, 140/10)
                                                .foregroundColor(.black)
                                                .cornerRadius(42/2)
                                            Text("Passeio")
                                                .bold()
                                                .font(.custom("pointfree", size: 18))
                                        }
                                        
                                    })
                                Button(
                                    action: {
                                        print("Banho")
                                    },
                                    
                                    label:{
                                        VStack{
                                            Image("pet-shop-7")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 93, height: 93)
                                                .background(Color.white)
                                                .padding(.vertical, 140/10)
                                                .padding(.horizontal, 140/10)
                                                .foregroundColor(.black)
                                                .cornerRadius(42/2)
                                            Text("Pet Shop")
                                                .bold()
                                                .font(.custom("pointfree", size: 18))
                                        }
                                        
                                    })
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct Testing_Previews: PreviewProvider {
        static var previews: some View {
            Tópicos_testando()
        }
    }
}
