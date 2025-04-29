//
//  TextOverlay.swift
//  Landmarks
//
//  Created by Ana Polo  on 29/4/25.
//

import SwiftUI

struct TextOverlay: View {
    let title: String
    let subtitle: String

    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [
                .black.opacity(0.6),
                .black.opacity(0)
            ]),
            startPoint: .bottom,
            endPoint: .center,
        )
    }

    var body: some View {
        ZStack(alignment: .bottomLeading){
            gradient
            VStack(alignment: .leading){
                Text(title)
                    .font(.title)
                    .bold()
                Text(subtitle)
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    TextOverlay(title: "Hello", subtitle: "World")
}
