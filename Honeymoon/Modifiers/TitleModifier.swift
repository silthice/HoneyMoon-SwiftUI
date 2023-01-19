//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Giap on 19/01/2023.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}
