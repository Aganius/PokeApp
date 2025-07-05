//
//  PokemonType.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/20/24.
//

import Foundation

struct PokemonType: Decodable, Identifiable {
    var id: Int { slot }
    let slot: Int
    let type: PokeType
}

struct PokeType: Decodable {
    let name: String
    let url: String
}
