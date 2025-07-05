//
//  PokemonResultMock.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/28/24.
//

import Foundation

#if DEBUG
private let pokemonResultMock = MockPokemonResultDelegate()

extension PokemonResult {
    static var mocked: PokemonResult {
        pokemonResultMock.pokemonResult
    }
    
    static var mockedList: [PokemonResult] {
        pokemonResultMock.pokemonResultList
    }
}

private class MockPokemonResultDelegate {
    let pokemonResult = PokemonResult(
        name: "charmeleon",
        url: "https://pokeapi.co/api/v2/pokemon/5/"
    )
    
    let pokemonResultList = [
        PokemonResult(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
        PokemonResult(name: "ivysaur", url: "https://pokeapi.co/api/v2/pokemon/2/"),
        PokemonResult(name: "venusaur", url: "https://pokeapi.co/api/v2/pokemon/3/"),
        PokemonResult(name: "charmander", url: "https://pokeapi.co/api/v2/pokemon/4/"),
        PokemonResult(name: "charmeleon", url: "https://pokeapi.co/api/v2/pokemon/5/"),
        PokemonResult(name: "charizard", url: "https://pokeapi.co/api/v2/pokemon/6/"),
        PokemonResult(name: "squirtle", url: "https://pokeapi.co/api/v2/pokemon/7/"),
        PokemonResult(name: "wartortle", url: "https://pokeapi.co/api/v2/pokemon/8/"),
        PokemonResult(name: "blastoise", url: "https://pokeapi.co/api/v2/pokemon/9/"),
        PokemonResult(name: "caterpie", url: "https://pokeapi.co/api/v2/pokemon/10/"),
        PokemonResult(name: "metapod", url: "https://pokeapi.co/api/v2/pokemon/11/"),
        PokemonResult(name: "butterfree", url: "https://pokeapi.co/api/v2/pokemon/12/"),
        PokemonResult(name: "weedle", url: "https://pokeapi.co/api/v2/pokemon/13/"),
        PokemonResult(name: "kakuna", url: "https://pokeapi.co/api/v2/pokemon/14/"),
        PokemonResult(name: "beedrill", url: "https://pokeapi.co/api/v2/pokemon/15/"),
        PokemonResult(name: "pidgey", url: "https://pokeapi.co/api/v2/pokemon/16/"),
        PokemonResult(name: "pidgeotto", url: "https://pokeapi.co/api/v2/pokemon/17/"),
        PokemonResult(name: "pidgeot", url: "https://pokeapi.co/api/v2/pokemon/18/"),
        PokemonResult(name: "rattata", url: "https://pokeapi.co/api/v2/pokemon/19/"),
        PokemonResult(name: "raticate", url: "https://pokeapi.co/api/v2/pokemon/20/")
    ]
}
#endif
