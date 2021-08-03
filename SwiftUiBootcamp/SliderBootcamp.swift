//
//  SliderBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 03/08/21.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var color: Color = .red
    @State var sliderValue: Double = 3
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
//                "\(sliderValue)"
                String(format: "%.0f", sliderValue)
            )
            .foregroundColor(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                        
                })
                .accentColor(.red)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
