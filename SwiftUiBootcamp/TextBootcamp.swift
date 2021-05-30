//
//  TextBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 30/05/21.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
//        Text("Hello, World!".lowercased())
//        Text("Hello, World!".uppercased())
        Text("Hello, World!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough()
//            .strikethrough(true, color: Color.green)
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
//            .baselineOffset(-50.0)
//            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
