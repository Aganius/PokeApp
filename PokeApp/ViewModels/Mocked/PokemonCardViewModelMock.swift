//
//  PokemonCardViewModelMock.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/27/24.
//

import Foundation

#if DEBUG
private let pokemonCardViewModelMock = MockPokemonCardViewModelDelegate()

extension PokemonCardViewModel {
    static var mocked: PokemonCardViewModel {
        pokemonCardViewModelMock.viewModel
    }
}

private class MockPokemonCardViewModelDelegate {
    let viewModel = PokemonCardViewModel(
        pokemonResult: PokemonResult.mocked,
        pokemonService: PokemonWebService.mocked
    )
}
#endif
