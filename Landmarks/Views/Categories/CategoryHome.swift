//
//  CategorieHome.swift
//  Landmarks
//
//  Created by Ana Polo  on 27/4/25.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false

    var body: some View {
        NavigationSplitView {
            List {
                FeaturePageView()
                    .listRowInsets(EdgeInsets())

                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }.listRowInsets(EdgeInsets())
            }.listStyle(.inset)
                .navigationTitle("Featured")
                .toolbar {
                    Button {
                        showingProfile.toggle()
                    } label: {
                        Label("User Profile", systemImage: "person.crop.circle")
                    }
                }.sheet(isPresented: $showingProfile) {
                    ProfileHost()
                        .environment(ModelData())
                }
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
