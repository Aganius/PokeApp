//
//  PokemonCardView.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/21/24.
//

import SwiftUI

struct PokemonCardView: View {
    @ObservedObject var viewModel: PokemonCardViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            if let pokemon = viewModel.pokemon {
                HStack {
                    Text(pokemon.name.capitalized)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .shadow(color: .black, radius: 1)
                    Spacer()
                    Text(String(format: "#%03d", pokemon.id))
                        .font(.caption)
                        .fontWeight(.bold)
                        .opacity(0.6)
                        .foregroundStyle(.white)
                        .shadow(color: .black, radius: 1)
                }
                HStack {
                    VStack(alignment: .leading) {
                        ForEach(pokemon.types) { type in
                            Text(type.type.name.capitalized)
                                .roundedText()
                        }
                    }
                    Spacer()
                    AsyncImage(url: URL(string: pokemon.sprites.other.officialArtwork.frontDefault)) { image in
                        image
                            .cardImage()
                            .onAppear {
                                viewModel.getBackground(image: ImageRenderer(content: image).uiImage!)
                            }
                    } placeholder: {
                        Image("5")
                            .cardImage()
                            .onAppear {
                                viewModel.getBackground(image: ImageRenderer(content: Image("5")).uiImage!)
                            }
                    }
                }
            }
        }
        .onAppear {
            viewModel.loadPokemon()
        }
        .padding()
        .background(viewModel.background)
        .cornerRadius(15)
    }
}

#Preview {
    PokemonCardView(viewModel: PokemonCardViewModel.mocked)
    .frame(width: 200)
}
