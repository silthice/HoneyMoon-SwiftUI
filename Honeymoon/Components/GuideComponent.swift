//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Giap on 19/01/2023.
//

import SwiftUI


struct GuideComponent: View {
    
    //MARK: - PROPERTIES
    var title: String
    var subtitle: String
    var description: String
    var icon: String

    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 20, content: {
            
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.pink)
            
            
            VStack(alignment: .leading, spacing: 4, content: {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(.pink)
                }
                
                Divider()
                    .padding(.bottom, 4)
                
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
                
            }) //: End of VStack
        }) //: End of HStack
    }
}

//MARK: - PREVIEW
struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(title: "title", subtitle: "Subti swuipe", description: "this placeholder descaskdfalsdkfdalksdmfasdf", icon: "heart.circle")
            .previewLayout(.sizeThatFits)
    }
}
