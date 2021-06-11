//
//  SafeAreaBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 11/06/21.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ZStack {
            
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                VStack {
                    
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10){ index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                    
                }
            }
//            .background(Color.red)
            .background(
                Color.red
                    .ignoresSafeArea(edges: .top)
            )
        }
        
        
        
//            ZStack {
//                //background
//                Color.blue
//                    .edgesIgnoringSafeArea(.all)
//
//
//                VStack{
//                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    Spacer()
//                }.frame(maxWidth: .infinity, maxHeight: .infinity)
//               .background(Color.red)
//            }
        
        
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
