//
//  Pokemon.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/20/24.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let order: Int
    let name: String
    let sprites: Sprites
    let types: [PokemonType]
}
