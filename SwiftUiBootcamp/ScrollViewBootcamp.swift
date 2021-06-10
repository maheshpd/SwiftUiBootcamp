//
//  ScrollViewBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 10/06/21.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(0..<10) { index in
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        
                        HStack {
                            
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
