//
//  GridBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 10/06/21.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        
        ScrollView{
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    
                    Section(header:
                                Text("Section 1")
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.blue)
                                .padding()
                    ) {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }

                    Section(header:
                                Text("Section 2")
                                .padding()
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.red)
                                .padding()
                    ) {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    }


                })
            
            LazyVGrid(columns: columns, content: {
                
            })
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
