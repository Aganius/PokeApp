//
//  Sprites.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/20/24.
//

import Foundation

struct Sprites: Decodable {
    let other: SpriteOther
}

struct SpriteOther: Decodable {
    let dreamWorld: DreamWorld
    let officialArtwork: OfficialArtwork
    
    private enum CodingKeys: String, CodingKey {
        case dreamWorld = "dream_world"
        case officialArtwork = "official-artwork"
    }
}

struct OfficialArtwork: Decodable {
    let frontDefault: String
    let frontShiny: String?
    
    private enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
    }
}

struct DreamWorld: Decodable {
    let frontDefault: String
    
    private enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
}
