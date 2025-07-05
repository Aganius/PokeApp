//
//  PokemonSpec.swift
//  PokeAppTests
//
//  Created by Elioth Quintana on 3/4/24.
//

@testable import PokeApp
import Foundation
import Quick
import Nimble

class PokemonSpec: QuickSpec {
    override class func spec() {
        var subject: Pokemon!
        
        describe("Pokemon") {
            if let url = Bundle(for: Self.self).url(forResource: "Pokemon", withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    subject = try decoder.decode(Pokemon.self, from: data)
                } catch {
                    print("error: \(error)")
                }
            }
            
            context("when decoding") {
                it("should convert Json data into a Pokemon object") {
                    expect(subject).toNot(beNil())
                }
                
                it("should contain a valid id") {
                    expect(subject.id).to(equal(5))
                }
                
                it("should contain a valid order") {
                    expect(subject.order).to(equal(6))
                }
                
                it("should contain a valid name") {
                    expect(subject.name).to(equal("charmeleon"))
                }
                
                it("should contain a valid front default sprite for dream world") {
                    expect(subject.sprites.other.dreamWorld.frontDefault).to(equal("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/5.svg"))
                }
                
                it("should contain a valid front default sprite for the official artwork") {
                    expect(subject.sprites.other.officialArtwork.frontDefault).to(equal("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png"))
                }
                
                it("should contain a valid front shiny sprite for the official artwork") {
                    expect(subject.sprites.other.officialArtwork.frontShiny).to(equal("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/5.png"))
                }
                
                it("should contain at least one type") {
                    expect(subject.types).toNot(beEmpty())
                }
                
                it("should contain a valid slot for its type") {
                    expect(subject.types[0].slot).to(equal(1))
                }
                
                it("should contain a valid name for its type") {
                    expect(subject.types[0].type.name).to(equal("fire"))
                }
                
                it("should contain a valid url for its type") {
                    expect(subject.types[0].type.url).to(equal("https://pokeapi.co/api/v2/type/10/"))
                }
            }
        }
    }
}
