//
//  FooterView.swift
//  Honeymoon
//
//  Created by Giap on 19/01/2023.
//

import SwiftUI

struct FooterView: View {
    //MARK: - PROPERTIES
    @Binding var showBookingAlert: Bool
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            
            Button(action: {
                showBookingAlert.toggle()
            }, label: {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 20)
                    .tint(.pink)
                    .background(
                        Capsule().stroke(.pink, lineWidth: 2)
                    )
                
            })
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))
        } //: End of HStack
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    
    @State static var showAlert: Bool = false
    
    static var previews: some View {
        FooterView(showBookingAlert: $showAlert)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
