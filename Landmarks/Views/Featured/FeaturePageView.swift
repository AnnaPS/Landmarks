//
//  FeaturePageView.swift
//  Landmarks
//
//  Created by Ana Polo  on 29/4/25.
//

import SwiftUI

struct FeaturePageView: View {
    var body: some View {
        TabView {
            ForEach(ModelData().features) { landmark in
                FeatureCard(landmark: landmark)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}

#Preview {
    FeaturePageView()
}
