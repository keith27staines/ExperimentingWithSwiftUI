//
//  View+extensions.swift
//  ExperimentingWithSwiftUI
//
//  Created by Keith Staines on 24/12/2023.
//

import SwiftUI

extension View {
    func glow(
        _ color: Color = .red,
        radius: CGFloat = 20
    ) -> some View {
        self
            .shadow(color: color, radius: radius / 3)
            .shadow(color: color, radius: radius / 3)
            .shadow(color: color, radius: radius / 3)
    }
    
    func glowWithBlur(
        _ color: Color = .red,
        radius: CGFloat = 20
    ) -> some View {
        self
            .blur(radius: radius / 6)
            .glow(color, radius: radius)
    }
}
