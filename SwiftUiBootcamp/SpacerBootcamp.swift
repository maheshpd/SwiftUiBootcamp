//
//  SpacerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 06/06/21.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack{
            Rectangle()
                .frame(width: 100, height: 100)
            
            Spacer()
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
