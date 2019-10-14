//
//  ContentView.swift
//  Rotation3DEffectX&YAxes
//
//  Created by ramil on 14.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var degrees = 70.0
    var body: some View {
        VStack(spacing: 10) {
            Text("Rotating 3D Effect").font(.largeTitle)
            Text("X & Y Axes").font(.title).foregroundColor(.gray)
            Text("Combine and X and Y axis values to create an angled line (vector) to rotate on.")
            
            Text("axis: (x: 1.0, y: 2.0, z: 0.0)")
            Text("Creates this vector to rotate on:")
            
            Image("XY")
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow)
                .opacity(0.7)
            .overlay(
                Text("MOve slider to adjust rotation")
                    .font(.largeTitle).bold()
            )
                .rotation3DEffect(Angle(degrees: degrees), axis: (x: 1.0, y: 2.0, z: 0.0))
            
            Slider(value: $degrees, in: -180...180, step: 1).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
