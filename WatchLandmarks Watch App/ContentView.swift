//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Ana Polo  on 29/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
