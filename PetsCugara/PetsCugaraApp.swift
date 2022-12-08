//
//  PetsCugaraApp.swift
//  PetsCugara
//
//  Created by Camila Azevedo do Vale Santiago on 25/10/22.
//
import SwiftUI

// UserDefaults para fazer a persistencia de dados
// Onboarding com SwiftUI

@main
struct PetsCugaraApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView()
//            LandmarkRow(landmark: landmarks2[1])
            LandmarkList()
        }
    }
}
