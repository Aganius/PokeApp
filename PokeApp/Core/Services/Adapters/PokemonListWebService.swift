//
//  PokemonListWebService.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/20/24.
//

import Foundation
import Combine

final class PokemonListWebService: PokemonListService, WebService {
    var endpoint = "pokemon/?offset=%@&limit=%@"
    
    func retrievePokemonList(offset: Int, limit: Int) -> AnyPublisher<PokemonList, Error> {
        endpoint = String(format: "pokemon/?offset=%@&limit=%@", "\(offset)", "\(limit)")
        
        let httpClient = HTTPClient<PokemonList>(service: self)
        
        return httpClient.fetch()
    }
}
