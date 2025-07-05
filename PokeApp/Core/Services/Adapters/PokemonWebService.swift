//
//  PokemonWebService.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/20/24.
//

import Foundation
import Combine

final class PokemonWebService: PokemonService, WebService {
    var endpoint = "pokemon/%@"
    
    func retrievePokemon(byURL url: String) -> AnyPublisher<Pokemon, Error> {
        endpoint = url
        
        let httpClient = HTTPClient<Pokemon>(service: self)
        
        return httpClient.fetch()
    }
    
    func retrievePokemon(byId id: Int) -> AnyPublisher<Pokemon, Error> {
        
        let httpClient = HTTPClient<Pokemon>(service: self)
        
        return httpClient.fetch(id)
    }
    
    func retrievePokemon(byName name: String) -> AnyPublisher<Pokemon, Error> {
        
        let httpClient = HTTPClient<Pokemon>(service: self)
        
        return httpClient.fetch(name)
    }
}
