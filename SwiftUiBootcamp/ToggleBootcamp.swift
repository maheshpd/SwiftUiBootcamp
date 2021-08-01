//
//  ToggleBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 01/08/21.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            
            HStack {
                
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
                
            }
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                Text("Change Status")
            })
                .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1))))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
