//
//  PokemonListWebServiceSpec.swift
//  PokeAppTests
//
//  Created by Elioth Quintana on 3/13/24.
//

@testable import PokeApp
import Foundation
import OHHTTPStubs
import OHHTTPStubsSwift
import Combine
import Quick
import Nimble

class PokemonListWebServiceSpec: QuickSpec {
    override class func spec() {
        var subject: PokemonListService!
        var response: AnyPublisher<PokemonList, Error>!
        
        afterSuite {
            OHHTTPStubs.HTTPStubs.removeAllStubs()
        }
        
        describe("PokemonListWebService") {
            
            stub(condition: isHost("pokeapi.co") && isPath("/api/v2/pokemon/?offset=0&limit=20")) { _ in
                HTTPStubsResponse(error: NSError(domain: NSURLErrorDomain, code: NSURLErrorNotConnectedToInternet))
            }
            subject = PokemonListWebService()
            
            describe("retrievePokemonList(offset:limit:)") {
                response = subject.retrievePokemonList(offset: 0, limit: 20)
                
                it("should return a publisher") {
                    expect(response).toNot(beNil())
                }
            }
        }
    }
}
