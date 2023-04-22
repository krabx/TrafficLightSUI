//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Богдан Радченко on 21.04.2023.
//

import SwiftUI

struct ContentView: View {
    private enum TrafficColor {
        case red
        case yellow
        case green
        case noSignal
    }
    
    @State private var currentSignal: TrafficColor = .noSignal
    
    @State private var nextColor: String = "Start"
    @State private var opacityRed: Double =  0.5
    @State private var opacityYellow: Double = 0.5
    @State private var opacityGreen: Double = 0.5

    
    var body: some View {
        VStack {
            TrafficSignalView(color: .red, opacity: opacityRed)
            TrafficSignalView(color: .yellow, opacity: opacityYellow)
            TrafficSignalView(color: .green, opacity: opacityGreen)
            
            Spacer()
            
            Button(action: changeColor) {
                TextView(buttonText: nextColor)
            }
        }
        .padding(.top)
    }
    
    private func changeColor() {
        switch currentSignal {
        case .red:
            currentSignal = .yellow
            opacityYellow = 1
            opacityRed = 0.5
            nextColor = "Green"
        case .yellow:
            currentSignal = .green
            opacityGreen = 1
            opacityYellow = 0.5
            nextColor = "Red"
        case .green:
            currentSignal = .red
            opacityRed = 1
            opacityGreen = 0.5
            nextColor = "Yellow"
        case .noSignal:
            currentSignal = .red
            opacityRed = 1
            nextColor = "Yellow"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
