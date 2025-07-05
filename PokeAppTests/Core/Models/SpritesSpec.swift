//
//  SpritesSpec.swift
//  PokeAppTests
//
//  Created by Elioth Quintana on 3/11/24.
//

@testable import PokeApp
import Foundation
import Quick
import Nimble

class SpritesSpec: QuickSpec {
    override class func spec() {
        var subject: Sprites!
        
        describe("Pokemon") {
            if let url = Bundle(for: Self.self).url(forResource: "Pokemon", withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    subject = try decoder.decode(Pokemon.self, from: data).sprites
                } catch {
                    print("error: \(error)")
                }
            }
            
            context("when decoding") {
                it("should convert Json data into a Pokemon object") {
                    expect(subject).toNot(beNil())
                }
                
                it("should contain a valid id") {
                    expect(subject.other.dreamWorld.frontDefault).to(equal("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/5.svg"))
                }
                
                it("should contain a valid id") {
                    expect(subject.other.officialArtwork.frontDefault).to(equal("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png"))
                }
                
                it("should contain a valid id") {
                    expect(subject.other.officialArtwork.frontShiny).to(equal("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/5.png"))
                }
            }
        }
    }
}
