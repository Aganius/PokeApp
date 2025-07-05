//
//  MockPokemonListService.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/28/24.
//

import Foundation
import Combine

#if DEBUG
private let pokemonWebServiceMock = MockPokemonListWebServiceDelegate()

extension PokemonListWebService {
    static var mocked: PokemonListService {
        pokemonWebServiceMock.service
    }
}

private class MockPokemonListWebService: PokemonListService {
    func retrievePokemonList(offset: Int, limit: Int) -> AnyPublisher<PokemonList, Error> {
        getPokemonMock()
    }
    
    private func getPokemonMock() -> AnyPublisher<PokemonList, Error> {
        Just(PokemonList.mocked)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
    
}

private class MockPokemonListWebServiceDelegate {
    let service = MockPokemonListWebService()
}
#endif
