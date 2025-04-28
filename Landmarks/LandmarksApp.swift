//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ana Polo  on 27/4/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
