//
//  PokemonWebServiceSpec.swift
//  PokeAppTests
//
//  Created by Elioth Quintana on 3/6/24.
//

@testable import PokeApp
import Foundation
import OHHTTPStubs
import OHHTTPStubsSwift
import Combine
import Quick
import Nimble

class PokemonWebServiceSpec: QuickSpec {
    override class func spec() {
        var subject: PokemonService!
        var response: AnyPublisher<Pokemon, Error>!
        
        afterSuite {
            OHHTTPStubs.HTTPStubs.removeAllStubs()
        }
        
        describe("PokemonWebService") {
            
            stub(condition: isHost("pokeapi.co") && isPath("/api/v2/pokemon/charmeleon")) { _ in
                HTTPStubsResponse(error: NSError(domain: NSURLErrorDomain, code: NSURLErrorNotConnectedToInternet))
            }
            subject = PokemonWebService()
            
            describe("retrievePokemon(byURL:)") {
                response = subject.retrievePokemon(byURL: "https://pokeapi.co/api/v2/pokemon/5/")
                
                it("should return a publisher") {
                    expect(response).toNot(beNil())
                }
            }
            
            describe("retrievePokemon(byId:)") {
                response = subject.retrievePokemon(byId: 5)
                
                it("should return a publisher") {
                    expect(response).toNot(beNil())
                }
            }
            
            describe("retrievePokemon(byName:)") {
                response = subject.retrievePokemon(byName: "charmeleon")
                
                it("should return a publisher") {
                    expect(response).toNot(beNil())
                }
            }
        }
    }
}
