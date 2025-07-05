//
//  RoundedTextModifier.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/21/24.
//

import SwiftUI

struct RoundedTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .font(.caption2)
            .fontWeight(.bold)
            .shadow(color: .black, radius: 1)
            .padding([.horizontal], 8)
            .padding([.vertical], 4)
            .background {
                Rectangle()
                    .foregroundStyle(.white)
                    .opacity(0.3)
                    .cornerRadius(20)
            }
    }
}

extension Text {
    func roundedText() -> some View {
        self
            .modifier(RoundedTextModifier())
    }
}
