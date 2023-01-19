//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Giap on 19/01/2023.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(
                Capsule()
                    .fill(.pink)
            )
            .foregroundColor(.white)
    }
}
