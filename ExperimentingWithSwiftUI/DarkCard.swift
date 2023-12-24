//
//  DarkCard.swift
//  ExperimentingWithSwiftUI
//
//  Created by Keith Staines on 21/12/2023.
//

import SwiftUI

struct DarkCard: View {
    
    @State var rotation = CGFloat(0)
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 260)
                .frame(height: 340)
                .foregroundColor(Color(UIColor.darkGray))
                
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 270, height: 500)
                .foregroundStyle(
                    LinearGradient(colors: [.red, .blue], startPoint: .top, endPoint: .bottom)
                )
                .rotationEffect(Angle(degrees: rotation))
                .mask(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 7)
                        .frame(width: 256, height: 336)
                    )
            Text("Card").font(.largeTitle).foregroundStyle(.white)
        }
        .padding()
        .onAppear {
            withAnimation(
                .linear(duration: 4)
                .repeatForever(autoreverses: true)
            ) {
                rotation = 360
            }
        }
    }
}
