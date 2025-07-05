//
//  PokemonListViewModelMock.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/28/24.
//

import Foundation

#if DEBUG
private let pokemonListViewModelMock = MockPokemonListViewModelDelegate()

extension PokemonListViewModel {
    static var mocked: PokemonListViewModel {
        pokemonListViewModelMock.viewModel
    }
}

private class MockPokemonListViewModelDelegate {
    let viewModel = PokemonListViewModel(pokemonListService: PokemonListWebService.mocked, pokemonCardService: PokemonWebService.mocked)
}
#endif
