//
//  MockPokemonService.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/28/24.
//

import Foundation
import Combine

#if DEBUG
private let pokemonWebServiceMock = MockPokemonServiceDelegate()

extension PokemonWebService {
    static var mocked: PokemonService {
        pokemonWebServiceMock.service
    }
}

protocol MockPokemonService: PokemonService {
    func getPokemonMock() -> AnyPublisher<Pokemon, Error>
}

class MockPokemonWebService: MockPokemonService {
    func retrievePokemon(byId id: Int) -> AnyPublisher<Pokemon, Error> {
        getPokemonMock()
    }
    
    func retrievePokemon(byName name: String) -> AnyPublisher<Pokemon, Error> {
        guard let pokemon = Pokemon.mockedList.first(where: { pokemon in
            pokemon.name == name
        })
        else {
            return getPokemonMock()
        }
        return Just(pokemon)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
    
    func retrievePokemon(byURL url: String) -> AnyPublisher<Pokemon, Error> {
        getPokemonMock()
    }
    
    func getPokemonMock() -> AnyPublisher<Pokemon, Error> {
        Just(Pokemon.mocked)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
    
}

private class MockPokemonServiceDelegate {
    let service = MockPokemonWebService()
}
#endif
