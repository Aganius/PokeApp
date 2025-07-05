//
//  PokemonListService.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/20/24.
//

import Foundation
import Combine

protocol PokemonListService {
    func retrievePokemonList(offset: Int, limit: Int) -> AnyPublisher<PokemonList, Error>
}

