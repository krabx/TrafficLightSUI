//
//  TrafficSignalView.swift
//  TrafficLightSUI
//
//  Created by Богдан Радченко on 21.04.2023.
//

import SwiftUI

struct TrafficSignalView: View {
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 160, height: 160)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .padding(.bottom, 20)
        
    }
}

struct TrafficSignalView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficSignalView(color: .red, opacity: 0.5)
    }
}
