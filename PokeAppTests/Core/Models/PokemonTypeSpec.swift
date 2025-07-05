//
//  PokemonTypeSpec.swift
//  PokeAppTests
//
//  Created by Elioth Quintana on 3/11/24.
//

@testable import PokeApp
import Foundation
import Quick
import Nimble

class PokemonTypeSpec: QuickSpec {
    override class func spec() {
        var subject: PokemonType!
        
        describe("Pokemon") {
            if let url = Bundle(for: Self.self).url(forResource: "Pokemon", withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    subject = try decoder.decode(Pokemon.self, from: data).types.first
                } catch {
                    print("error: \(error)")
                }
            }
            
            context("when decoding") {
                it("should convert Json data into a Pokemon object") {
                    expect(subject).toNot(beNil())
                }
                
                it("should contain a valid id") {
                    expect(subject.id).to(equal(1))
                }
                
                it("should contain a valid order") {
                    expect(subject.slot).to(equal(1))
                }
                
                it("should contain a valid order") {
                    expect(subject.type.name).to(equal("fire"))
                }
                
                it("should contain a valid order") {
                    expect(subject.type.url).to(equal("https://pokeapi.co/api/v2/type/10/"))
                }
            }
        }
    }
}
