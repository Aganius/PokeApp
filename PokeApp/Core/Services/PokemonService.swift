//
//  PokeApiService.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/20/24.
//

import Foundation
import Combine

protocol PokemonService {
    func retrievePokemon(byId id: Int) -> AnyPublisher<Pokemon, Error>
    func retrievePokemon(byName name: String) -> AnyPublisher<Pokemon, Error>
    func retrievePokemon(byURL url: String) -> AnyPublisher<Pokemon, Error>
}
