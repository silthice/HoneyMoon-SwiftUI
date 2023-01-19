//
//  ContentView.swift
//  Honeymoon
//
//  Created by Giap on 19/01/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    
    //MARK: - BODY
    var body: some View {
        
        VStack {
            
            //MARK: - HEADER
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            Spacer()
            
            //MARK: - CARDVIEW
            CardView(honeyMoon: honeymoonData[2])
                .padding()
            
            Spacer()
            
            //MARK: - FOOTER
            FooterView(showBookingAlert: $showAlert)
        } //: End of VStack
        .alert(isPresented: $showAlert, content: {
            Alert(
                title: Text("SUCCESS"),
                message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),
                dismissButton: .default(Text("Happy Honeymoon!"))
            )
        })
        
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
