//
//  ContentView.swift
//  ExperimentingWithSwiftUI
//
//  Created by Keith Staines on 21/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    let backgroundColor = Color(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))
    
    
    
    
    
    var body: some View {
        
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text("Hello world")
                    .font(.largeTitle)
                    .glow(.purple, radius: 6)
                
                Text("Hello world")
                    .font(.largeTitle)
                    .glowWithBlur(.purple, radius: 6)
                
                Text("Hello world")
                    .font(.largeTitle)
                    .multicolorGlow()
            }
        }
    }
}

#Preview {
    ContentView()
}
