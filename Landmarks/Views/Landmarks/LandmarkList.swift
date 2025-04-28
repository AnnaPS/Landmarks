//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ana Polo  on 27/4/25.
//

import SwiftUI

struct LandmarkList: View {
    /*
     The modelData property gets its value automatically, as long as the environment(_:) modifier has been applied to a parent. The @Environment property wrapper enables you to read the model data of the current view. Adding an environment(_:) modifier passes the data object down through the environment.
     */
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            !showFavoritesOnly || landmark.isFavorite
        }
    }

    var body: some View {
        NavigationSplitView {
            List {
                Toggle("Favorites only", isOn: $showFavoritesOnly)
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
