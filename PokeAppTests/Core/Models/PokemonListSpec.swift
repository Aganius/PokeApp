//
//  PokemonListSpec.swift
//  PokeAppTests
//
//  Created by Elioth Quintana on 3/11/24.
//

@testable import PokeApp
import Foundation
import Quick
import Nimble

class PokemonListSpec: QuickSpec {
    override class func spec() {
        var subject: PokemonList!
        
        describe("PokemonList") {
            if let url = Bundle(for: Self.self).url(forResource: "PokemonList", withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    subject = try decoder.decode(PokemonList.self, from: data)
                } catch {
                    print("error: \(error)")
                }
            }
            
            context("when decoding") {
                it("should convert json data into a PokemonList object") {
                    expect(subject).toNot(beNil())
                }
                
                it("should contain a valid count") {
                    expect(subject.count).to(equal(1302))
                }
                
                it("should contain a valid next url") {
                    expect(subject.next).to(equal("https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20"))
                }
                
                it("should contain a nil previous url") {
                    expect(subject.previous).to(beNil())
                }
                
                it("should contain a valid count of PokemonResult") {
                    expect(subject.results.count).to(equal(20))
                }
                
                it("should contain a valid id of the 5th PokemonResult") {
                    expect(subject.results[4].id).to(equal("charmeleon"))
                }
                
                it("should contain a valid name of the 5th PokemonResult") {
                    expect(subject.results[4].name).to(equal("charmeleon"))
                }
                
                it("should contain a valid url of the 5th PokemonResult") {
                    expect(subject.results[4].url).to(equal("https://pokeapi.co/api/v2/pokemon/5/"))
                }
            }
        }
    }
}
