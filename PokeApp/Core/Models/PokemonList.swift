//
//  PokemonList.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/21/24.
//

import Foundation

struct PokemonList: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [PokemonResult]
}

struct PokemonResult: Decodable, Identifiable {
    var id: String { name }
    let name: String
    let url: String
}
