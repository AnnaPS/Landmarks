//
//  FeatureCard.swift
//  Landmarks
//
//  Created by Ana Polo  on 29/4/25.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    var body: some View {
        landmark.featureImage?
            .resizable()
            .overlay {
                TextOverlay(title: landmark.name, subtitle: landmark.park)
            }
    }
}

#Preview {
    FeatureCard(landmark: ModelData().features[0])
        .aspectRatio(3 / 2, contentMode: .fit)
}
