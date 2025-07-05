//
//  ContentView.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/19/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        NavigationView {
//            EmptyView()
            PokemonListView(viewModel: PokemonListViewModel())
//            VStack {
//                Image("3")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 150)
//                    .background(.green)
//            }
//            .navigationTitle("Choose a Pokémon")
        }
    }
}

#Preview {
    ContentView()
}
