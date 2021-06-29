//
//  AlertBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Mahesh Prasad on 29/06/21.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "This video could not be upload"
                    showAlert.toggle()
                }
                Button("BUTTON 2") {
                    alertType = .success
//                    alertTitle = "Successfully upload video 🥳"
//                    alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
            }.alert(isPresented: $showAlert, content: {
                getAlert()
        })
        }
        
    }
    
    func getAlert() -> Alert {
        
//        return Alert(title: Text("This is the title"), message: Text("Here we will describe the error."), primaryButton: .destructive(Text("Delete"), action: {
//            backgroundColor = .red
//        }), secondaryButton: .cancel())
        
//        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("Ok")))
        
        switch alertType {
        
        case .error:
            return Alert(title: Text("There was an error"))
            
        case .success:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
            
        default:
            return Alert(title: Text("ERROR"))
        }
        
    }
    
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
