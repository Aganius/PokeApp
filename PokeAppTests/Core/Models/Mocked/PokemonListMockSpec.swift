//
//  PokemonListMockSpec.swift
//  PokeAppTests
//
//  Created by Elioth Quintana on 3/12/24.
//

@testable import PokeApp
import Foundation
import Quick
import Nimble

class PokemonListMockSpec: QuickSpec {
    override class func spec() {
        describe("PokemonListMock") {
            
            context("mockedList") {
                it("returns a mocked list of PokemonResult objects") {
                    let mockedList = PokemonList.mocked
                    expect(mockedList.count).to(beGreaterThan(0))
                    expect(mockedList.next).to(beNil())
                    expect(mockedList.previous).to(beNil())
                    expect(mockedList.results.count).to(beGreaterThan(0))
                    let fifthPokemonResult = mockedList.results[4]
                    expect(fifthPokemonResult.name).to(equal("charmeleon"))
                    expect(fifthPokemonResult.url).to(equal("https://pokeapi.co/api/v2/pokemon/5/"))
                }
            }
        }
    }
}
