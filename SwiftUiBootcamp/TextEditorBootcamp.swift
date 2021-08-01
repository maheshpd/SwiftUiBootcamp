//
//  TextEditorBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 01/08/21.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
//                    .foregroundColor(.red)
                    .background(Color.red)
                    .colorMultiply(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                })
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
