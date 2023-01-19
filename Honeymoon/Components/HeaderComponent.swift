//
//  HeaderComponent.swift
//  Honeymoon
//
//  Created by Giap on 19/01/2023.
//

import SwiftUI

//MARK: - PROPERTIES
//MARK: - BODY
struct HeaderComponent: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundColor(.secondary)
                .opacity(0.2)
            
            Image("logo-honeymoon")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
        }) //: End of VStack
    }
}

//MARK: - PREVIEW
struct HeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComponent()
            .previewLayout(.fixed(width: 375, height: 128))
    }
}
