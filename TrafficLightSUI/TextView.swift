//
//  TextView.swift
//  TrafficLightSUI
//
//  Created by Богдан Радченко on 21.04.2023.
//

import SwiftUI

struct TextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .frame(width: 120, height: 20)
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding()
            //.padding(.horizontal, 40)
            .background(
                RoundedRectangle(cornerRadius: 20)
            )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "")
    }
}
