//
//  GradientsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 30/05/21.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //                Color.red
                //                LinearGradient(
                //                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)), Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))]),
                //                    startPoint: .topLeading,
                //                    endPoint: .bottom)
                //                RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .leading,
                //                               startRadius: 5,
                //                               endRadius: 400)
                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .topLeading,
                                angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
