//
//  HTTPClient.swift
//  PokeApp
//
//  Created by Elioth Quintana on 2/20/24.
//

import Foundation
import Combine

enum NetworkError: Error {
    case badUrl
    case invalidResponse
    case requestFailed(Error)
    case decodingFailed(Error)
}

class HTTPClient <T> where T: Decodable {
    var baseURL = "https://pokeapi.co/api/v2/"
    let service: WebService
    
    init(service: WebService) {
        self.service = service
    }
    
    func fetch(_ args: CVarArg...) -> AnyPublisher<T, Error> {
        // Sometimes the API will provide the endpoint along with the base URL, so we remove it here.
        var endpoint = service.endpoint.replacingOccurrences(of: baseURL, with: "")
        endpoint = String(format: endpoint, arguments: args)
        
        print("endpoint: \(endpoint)")
        
        guard let url = URL(string: baseURL + endpoint)
        else {
            print("Invalid url error")
            return Fail(error: NetworkError.badUrl)
                .eraseToAnyPublisher()
        }
        
        print("url: \(url)")
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { (data, response) in
                guard let httpResponse = response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    print("Invalid response error")
                    throw NetworkError.invalidResponse
                }
                
                return data
            }
            .mapError { error in
                NetworkError.requestFailed(error)
            }
            .decode(type: T.self, decoder: JSONDecoder())
            .mapError { error in
                print("Decoding error: \(error)")
                // Decoding error
                return NetworkError.decodingFailed(error)
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
}
