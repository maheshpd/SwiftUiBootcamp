//
//  ExtractSubviewsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 15/06/21.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            contentLayer
            
        }
    }
    
    
    var contentLayer: some View {
        
        HStack {
            MyItem(title: "Apple", count: 1, color: .red, foregroundColor: .black)
            MyItem(title: "Oranges", count: 10, color: .orange, foregroundColor: .black)
            MyItem(title: "Bananas", count: 34, color: .yellow, foregroundColor: .black)
        }
        
    }
    
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    let foregroundColor: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
                .foregroundColor(foregroundColor)
            Text("\(title)")
                .foregroundColor(foregroundColor)
        }.padding()
        .background(color)
        .cornerRadius(10)
    }
}
