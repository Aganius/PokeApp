//
//  PokemonListView.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/21/24.
//

import SwiftUI

struct PokemonListView: View {
    @ObservedObject var viewModel: PokemonListViewModel
    private let flexibleColumn = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: flexibleColumn) {
                ForEach(viewModel.pokemons) { pokemonResult in
                    viewModel.buildPokemonCard(with: pokemonResult)
                }
            }
            .padding()
            .onAppear {
                viewModel.loadPokemonList()
            }
        }
    }
}

#Preview {
    PokemonListView(viewModel: PokemonListViewModel.mocked)
}
