//
//  little map.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 01/12/22.
//

import SwiftUI
import MapKit

struct littlemap: View {
       
    @State private var region: MKCoordinateRegion
    
    internal init(coordinate: CLLocationCoordinate2D) {
        let region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        )
        self._region = .init(initialValue: region)
    }
    
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct little_map_Previews: PreviewProvider {
    static var previews: some View {
        littlemap(coordinate: CLLocationCoordinate2D(latitude: -3.787866916281701, longitude: -38.466493046808544))
    }
}
