//
//  PokemonResultMock.swift
//  PokeAppTests
//
//  Created by Elioth Quintana on 3/11/24.
//

@testable import PokeApp
import Foundation
import Quick
import Nimble

class PokemonResultMockSpec: QuickSpec {
    override class func spec() {
        describe("PokemonResult") {
            var pokemonResult: PokemonResult!
            var pokemonResultList: [PokemonResult]!

            beforeEach {
                pokemonResult = PokemonResult.mocked
                pokemonResultList = PokemonResult.mockedList
            }

            context("mocked PokemonResult") {
                it("should have correct name") {
                    expect(pokemonResult.name).to(equal("charmeleon"))
                }

                it("should have correct url") {
                    expect(pokemonResult.url).to(equal("https://pokeapi.co/api/v2/pokemon/5/"))
                }
            }

            context("mocked PokemonResult list") {
                it("should have correct count") {
                    expect(pokemonResultList.count).to(equal(20))
                }

                it("should have correct name at index 0") {
                    expect(pokemonResultList[0].name).to(equal("bulbasaur"))
                }

                it("should have correct url at index 0") {
                    expect(pokemonResultList[0].url).to(equal("https://pokeapi.co/api/v2/pokemon/1/"))
                }
            }
        }
    }
}
