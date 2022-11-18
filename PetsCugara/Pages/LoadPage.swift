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
			LinearGradient(colors: [Color("Cterciaria"), Color("Cprimaria"), Color("Cprimaria")], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
			
			VStack{
				Text("Pets Cugara")
					.bold()
					.font(.custom("Pulang", size: 60))
					.padding(20)
					.foregroundColor(Color("Cterciaria"))
				
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
		}
    }
}

struct LoadPage_Previews: PreviewProvider {
    static var previews: some View {
        LoadPage()
    }
}
