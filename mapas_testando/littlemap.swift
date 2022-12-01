//
//  little map.swift
//  PetsCugara
//
//  Created by Caio Vieira Cajazeiras on 01/12/22.
//

import SwiftUI
import MapKit

struct littlemap: View {
    @State private var region = MKCoordinateRegion(
        center:  CLLocationCoordinate2D(latitude: -3.754977987023614, longitude: -38.533526688048376),
        span: MKCoordinateSpan(latitudeDelta: 0.00001, longitudeDelta: 0.00015)
        )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct little_map_Previews: PreviewProvider {
    static var previews: some View {
        littlemap()
    }
}
