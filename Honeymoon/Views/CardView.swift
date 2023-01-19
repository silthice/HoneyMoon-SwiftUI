//
//  CardView.swift
//  Honeymoon
//
//  Created by Giap on 19/01/2023.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    var honeyMoon: Destination
    let id = UUID()
    
    //MARK: - BODY
    var body: some View {
        Image(honeyMoon.image)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 12, content: {
                    Text(honeyMoon.place.uppercased())
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 4)
                        .overlay(
                            Rectangle()
                                .fill(.white)
                                .frame(height: 1),
                            alignment: .bottom
                        )
                    Text(honeyMoon.country.uppercased())
                        .foregroundColor(.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(
                            Capsule().fill(.white)
                        )
                })
                .frame(minWidth: 280)
                .padding(.bottom, 50)
                , alignment: .bottom
            )
    }
}

//MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(honeyMoon: honeymoonData[0])
            .previewLayout(.fixed(width: 375, height: 600))
    }
}
