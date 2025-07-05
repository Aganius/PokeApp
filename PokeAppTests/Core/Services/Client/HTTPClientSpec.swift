//
//  HTTPClientSpec.swift
//  PokeAppTests
//
//  Created by Elioth Quintana on 3/7/24.
//

@testable import PokeApp
import Foundation
import OHHTTPStubs
import OHHTTPStubsSwift
import Combine
import Quick
import Nimble

class HTTPClientSpec: QuickSpec {
    private static var cancellables: Set<AnyCancellable> = []
    
    override class func spec() {
        var subject: HTTPClient<Pokemon>!
        var response: AnyPublisher<Pokemon, Error>!
        
        describe("HTTPClient") {
            describe("fetch(args:") {
                context("when the response is correct") {
                    var responsePokemon: Pokemon!
                    beforeEach {
                        stub(condition: isHost("pokeapi.co") && isPath("/api/v2/pokemon/charmeleon")) { _ in
                            var data = Data()
                            if let url = Bundle(for: Self.self).url(forResource: "Pokemon", withExtension: "json") {
                                do {
                                    data = try Data(contentsOf: url)
                                } catch {
                                    print("error: \(error)")
                                }
                            }
                            return HTTPStubsResponse(data: data, statusCode: 200, headers: nil)
                        }
                        
                        subject = HTTPClient(service: PokemonWebService())
                        response = subject.fetch("charmeleon")
                        
                        response.sink { completion in
                            switch completion {
                            case .finished: break
                            case .failure(_):
                                fail("we should have not received an error")
                            }
                        } receiveValue: { pokemon in
                            print("HTTPClientSpec when the response is correct: \(pokemon)")
                            responsePokemon = pokemon
                        }
                        .store(in: &cancellables)
                    }
                    
                    afterEach {
                        OHHTTPStubs.HTTPStubs.removeAllStubs()
                    }
                    
                    it("should eventually return a pokemon object from the response publisher") {
                        // This expectation is set to `toEventuallyNot` and a timeout of 2 seconds,
                        // because the requests takes more than 1 second to fulfill, otherwise it will fail.
                        expect(responsePokemon).toEventuallyNot(beNil(), timeout: .seconds(2))
                    }
                }
                
                context("when the url is invalid") {
                    var responseError: Error!
                    beforeEach {
                        
                        let webService = PokemonWebService()
                        webService.endpoint = ""
                        subject = HTTPClient(service: webService)
                        subject.baseURL = ""
                        response = subject.fetch("")
                        
                        response.sink { completion in
                            switch completion {
                            case .finished:
                                fail("we should have received an invalid url error")
                            case .failure(let error):
                                responseError = error
                            }
                        } receiveValue: { _ in }
                        .store(in: &cancellables)
                    }
                    
                    afterEach {
                        OHHTTPStubs.HTTPStubs.removeAllStubs()
                    }
                    
                    it("should eventually return the response error") {
                        expect(responseError).toEventuallyNot(beNil())
                    }
                }
                
                context("when the response is invalid") {
                    var responseError: Error!
                    beforeEach {
                        stub(condition: isHost("pokeapi.co") && isPath("/api/v2/pokemon/charmeleon")) { _ in
                            HTTPStubsResponse()
                        }
                        
                        subject = HTTPClient(service: PokemonWebService())
                        response = subject.fetch("charmeleon")
                        
                        response.sink { completion in
                            switch completion {
                            case .finished:
                                fail("we should have received an invalid response error")
                            case .failure(let error):
                                responseError = error
                            }
                        } receiveValue: { _ in }
                        .store(in: &cancellables)
                    }
                    
                    afterEach {
                        OHHTTPStubs.HTTPStubs.removeAllStubs()
                    }
                    
                    it("should eventually return the response error") {
                        expect(responseError).toEventuallyNot(beNil())
                    }
                }
                
                context("when the response is an error") {
                    var responseError: Error!
                    beforeEach {
                        stub(condition: isHost("pokeapi.co") && isPath("/api/v2/pokemon/charmeleon")) { _ in
                            HTTPStubsResponse(error: NetworkError.invalidResponse)
                        }
                        
                        subject = HTTPClient(service: PokemonWebService())
                        response = subject.fetch("charmeleon")
                        
                        response.sink { completion in
                            switch completion {
                            case .finished:
                                fail("we should have received an error")
                            case .failure(let error):
                                responseError = error
                            }
                        } receiveValue: { _ in }
                        .store(in: &cancellables)
                    }
                    
                    afterEach {
                        OHHTTPStubs.HTTPStubs.removeAllStubs()
                    }
                    
                    it("should eventually return the response error") {
                        expect(responseError).toEventuallyNot(beNil())
                    }
                }
            }
        }
    }
}
