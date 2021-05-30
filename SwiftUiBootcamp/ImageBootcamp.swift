//
//  ImageBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 30/05/21.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("mahesh")
            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.red)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//                Ellipse()
//                Circle()
//            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
