//
//  LoadPage.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 11/11/22.
//

import SwiftUI

struct LoadPage: View {
    var body: some View {
		ZStack{
			LinearGradient(colors: [Cor.Cterciaria, Cor.Cprimaria, Cor.Cprimaria], startPoint: .bottom, endPoint: .top)
			
			VStack{
				Text("Pets Cugara")
					.bold()
					.font(.custom("Pulang", size: 60))
					.padding(20)
					.foregroundColor(Cor.Cterciaria)
				
				Image("lina")
					.rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
					.frame(width: 60, height: 50)
					.scaleEffect(1.5)
					.padding(50)
			}
//
//			Spacer()
//
//			Text("Knight Wolves")
//				.foregroundColor(.white)
//			
		}.ignoresSafeArea()
    }
}

struct LoadPage_Previews: PreviewProvider {
    static var previews: some View {
        LoadPage()
    }
}
