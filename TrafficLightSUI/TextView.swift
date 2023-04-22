//
//  TextView.swift
//  TrafficLightSUI
//
//  Created by Богдан Радченко on 21.04.2023.
//

import SwiftUI

struct TextView: View {
    let buttonText: String
    
    var body: some View {
        Text(buttonText)
            .frame(width: 120, height: 20)
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding()
            .background(RoundedRectangle(cornerRadius: 20))
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(buttonText: "")
    }
}
