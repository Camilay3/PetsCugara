//
//  little map.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 01/12/22.
//

import SwiftUI
import MapKit

struct Localizacao: Identifiable{
    let id = UUID()
    let name: String
    let coordenada: CLLocationCoordinate2D
    let imagem: String
}

struct littlemap: View {
       
    @State private var region: MKCoordinateRegion
    var locationCoordinate: CLLocationCoordinate2D
    var name: String
    var image: String
    
    internal init(coordinate: CLLocationCoordinate2D, name: String, image: String) {
        let region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        )
        self._region = .init(initialValue: region)
        self.name = name
        self.locationCoordinate = coordinate
        self.image = image
    }
        
    var body: some View {
        
        let locais = [Localizacao(name: name, coordenada: locationCoordinate, imagem: image)]
   
        Map(coordinateRegion: $region, annotationItems: locais){ local in
            MapAnnotation(coordinate: locationCoordinate){
               Image(image)
                    .resizable()
                    .frame(width: 50, height: 50)
                    
            }
        }
    }
}

struct little_map_Previews: PreviewProvider {
    static var previews: some View {
        littlemap(coordinate: CLLocationCoordinate2D(latitude: -3.787866916281701, longitude: -38.466493046808544), name: "Teste", image: "lina")
    }
}
