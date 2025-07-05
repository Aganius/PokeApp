//
//  PokemonMockSpec.swift
//  PokeAppTests
//
//  Created by Elioth Quintana on 3/11/24.
//

@testable import PokeApp
import Foundation
import Quick
import Nimble

class PokemonMockSpec: QuickSpec {
    override class func spec() {
        describe("PokemonMock") {
            context("mocked") {
                it("returns a mocked Pokemon object") {
                    let mockedPokemon = Pokemon.mocked
                    expect(mockedPokemon.id).to(equal(5))
                    expect(mockedPokemon.order).to(equal(5))
                    expect(mockedPokemon.name).to(equal("charmeleon"))
                    expect(mockedPokemon.sprites.other.dreamWorld.frontDefault).to(equal("5"))
                    expect(mockedPokemon.sprites.other.officialArtwork.frontDefault).to(equal("5"))
                    expect(mockedPokemon.sprites.other.officialArtwork.frontShiny).to(equal("5"))
                    expect(mockedPokemon.types.count).to(equal(1))
                    expect(mockedPokemon.types.first?.slot).to(equal(1))
                    expect(mockedPokemon.types.first?.type.name).to(equal("fire"))
                    expect(mockedPokemon.types.first?.type.url).to(equal("https://pokeapi.co/api/v2/type/10/"))
                }
            }
            
            context("mockedList") {
                it("returns a mocked list of Pokemon objects") {
                    let mockedList = Pokemon.mockedList
                    expect(mockedList.count).to(beGreaterThan(0))
                    let fifthPokemon = mockedList[4]
                    expect(fifthPokemon.id).to(equal(5))
                    expect(fifthPokemon.order).to(equal(5))
                    expect(fifthPokemon.name).to(equal("charmeleon"))
                    expect(fifthPokemon.sprites.other.dreamWorld.frontDefault).to(equal("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png"))
                    expect(fifthPokemon.sprites.other.officialArtwork.frontDefault).to(equal("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png"))
                    expect(fifthPokemon.sprites.other.officialArtwork.frontShiny).to(equal("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/5.png"))
                    expect(fifthPokemon.types.count).to(equal(1))
                    expect(fifthPokemon.types.first?.slot).to(equal(1))
                    expect(fifthPokemon.types.first?.type.name).to(equal("fire"))
                    expect(fifthPokemon.types.first?.type.url).to(equal("https://pokeapi.co/api/v2/type/10/"))
                }
            }
        }
    }
}
