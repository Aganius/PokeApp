//
//  PokemonListViewModel.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/21/24.
//

import Foundation
import SwiftUI
import Combine

class PokemonListViewModel: ObservableObject {
    @Published var pokemons: [PokemonResult] = []
    @Published var errorMessage: String = "Loading Pokémon List..."
    
    private let pokemonListService: PokemonListService
    // This pokemonCardService is added in order to use Dependency Injection for Testing and Preview purposes.
    private let pokemonCardService: PokemonService
    private var cancellables: Set<AnyCancellable> = []
    
    init(
        pokemonListService: PokemonListService = PokemonListWebService(),
        pokemonCardService: PokemonService = PokemonWebService()
    ) {
        self.pokemonListService = pokemonListService
        self.pokemonCardService = pokemonCardService
    }
    
    @ViewBuilder
    func buildPokemonCard(with pokemonResult: PokemonResult) -> some View {
        PokemonCardView(
            viewModel: PokemonCardViewModel(
                pokemonResult: pokemonResult,
                pokemonService: pokemonCardService
            )
        )
        
    }
    
    func loadPokemonList() {
        pokemonListService.retrievePokemonList(offset: 0, limit: 20)
            .sink { completion in
                switch completion {
                case .finished:
                    print("Request completed successfully.")
                case .failure(let error):
                    self.errorMessage = "Request failed with error: \(error)"
                }
            } receiveValue: { pokemonList in
                if !pokemonList.results.isEmpty {
                    self.pokemons = pokemonList.results
                } else {
                    self.errorMessage = "No Pokémons found!"
                }
            }
            .store(in: &cancellables)
    }
}
