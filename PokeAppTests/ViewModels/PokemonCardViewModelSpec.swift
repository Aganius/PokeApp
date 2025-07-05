//
//  PokemonCardViewModelSpec.swift
//  PokeAppTests
//
//  Created by Elioth Quintana on 3/14/24.
//

@testable import PokeApp
import Foundation
import Combine
import Quick
import Nimble
import UIKit

//class PokemonCardViewModelSpec: QuickSpec {
//    override class func spec() {
//        describe("PokemonCardViewModel") {
//            var viewModel: PokemonCardViewModel!
//            var mockPokemonService: PokemonService!
//            
//            beforeEach {
//                let pokemonResult = PokemonResult(name: "charmeleon", url: "https://pokeapi.co/api/v2/pokemon/5/")
//                mockPokemonService = MockPokemonWebService()
//                viewModel = PokemonCardViewModel(pokemonResult: pokemonResult, pokemonService: mockPokemonService)
//            }
//            
//            context("when initialized") {
//                it("should have a valid pokemonResult") {
//                    expect(viewModel.pokemonResult.name).to(equal("charmeleon"))
//                }
//                
//                it("should have a valid pokemonService") {
//                    expect(viewModel.pokemonService).to(beAKindOf(PokemonService.self))
//                }
//            }
//            
//            context("when loading Pokemon") {
//                it("should update pokemon on successful retrieval") {
//                    let stubbedPokemon = mockPokemonService.getPokemonMock()
//                    
//                    viewModel.loadPokemon()
//                    
//                    expect(viewModel.pokemon).toEventuallyNot(beNil(), timeout: 3)
//                    expect(viewModel.errorMessage).toEventually(equal("Loading Pokémon..."), timeout: 3)
//                }
//                
//                it("should update errorMessage on failure") {
//                    mockPokemonService.stubRetrievePokemon = Fail(error: URLError(.badURL)).eraseToAnyPublisher()
//                    
//                    viewModel.loadPokemon()
//                    
//                    expect(viewModel.errorMessage).toEventuallyNot(equal("Loading Pokémon..."), timeout: 3)
//                }
//            }
//            
//            context("when getting background") {
//                it("should update background color") {
//                    let mockImage = UIImage() // Mocked image
//                    
//                    viewModel.getBackground(image: mockImage)
//                    
//                    // Expectation for background color to change
//                    expect(viewModel.background).toEventuallyNot(equal(.white), timeout: 3)
//                }
//            }
//        }
//    }
//}
