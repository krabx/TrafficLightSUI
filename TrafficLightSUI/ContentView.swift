//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Богдан Радченко on 21.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = "Start"
    @State private var opacityRed: Double = 0.5
    @State private var opacityYellow: Double = 0.5
    @State private var opacityGreen: Double = 0.5
    
    var body: some View {
        VStack {
            TrafficSignalView(color: .red, opacity: opacityRed)
            TrafficSignalView(color: .yellow, opacity: opacityYellow)
            TrafficSignalView(color: .green, opacity: opacityGreen)
            
            Spacer()
            
            Button(action: changeColor) {
                TextView(text: text)
            }
        }
        .padding(.top)
        
    }
    
    private func changeColor() {
        if opacityRed == 1 {
            opacityYellow = 1
            opacityRed = 0.5
            text = "Yellow"
        } else if opacityYellow == 1 {
            opacityYellow = 0.5
            opacityGreen = 1
            text = "Green"
        } else if opacityGreen == 1 {
            opacityGreen = 0.5
            opacityRed = 1
            text = "Red"
        } else {
            opacityRed = 1
            text = "Red"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
