//
//  CardImageModifier.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/27/24.
//

import SwiftUI

extension Image {
    func cardImage() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 75)
            .offset(x: 10, y: 10)
    }
}
