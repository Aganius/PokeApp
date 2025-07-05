//
//  PokemonCardViewModel.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/21/24.
//

import SwiftUI
import Combine
import ColorThiefSwift

class PokemonCardViewModel: ObservableObject {
    @Published var pokemonResult: PokemonResult
    @Published var pokemon: Pokemon?
    @Published var background: Color = .white
    @Published var errorMessage: String = "Loading Pokémon..."
    
    let pokemonService: PokemonService
    private var cancellables: Set<AnyCancellable> = []
    
    init(
        pokemonResult: PokemonResult,
        pokemonService: PokemonService = PokemonWebService()
    ) {
        self.pokemonResult = pokemonResult
        self.pokemonService = pokemonService
    }
    
    func loadPokemon() {
        pokemonService.retrievePokemon(byName: pokemonResult.name)
            .sink { completion in
                switch completion {
                case .finished:
                    print("Request completed successfully.")
                case .failure(let error):
                    self.errorMessage = "Request failed with error: \(error)"
                }
            } receiveValue: { pokemon in
                print("Pokemon Name: \(pokemon.name) Order: \(pokemon.order) ID: \(pokemon.id)")
                self.pokemon = pokemon
            }
            .store(in: &cancellables)
    }
    
    func getBackground(image: UIImage) {
        DispatchQueue.global(qos: .userInitiated).async {
            guard
                let colors = ColorThief.getPalette(from: image, colorCount: 10, quality: 1, ignoreWhite: true)
            else {
                self.background = .white
                return
            }
            DispatchQueue.main.async {
                self.background = Color(colors[0].makeUIColor())
            }
        }
    }
}

