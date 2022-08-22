//
//  PokemonDetailNetwork.swift
//  Pokedex
//
//  Created by Otavio Brito on 02/08/22.
//

import Foundation

class PokemonDetailNetwork {
    
    private final let networkManager = NetworkManager()
    
    func fetchPokemonDetail<T>(from pokemonId:Int, completion: @escaping NetworkResult<T>) {
        let request = NetworkRequest(endpointURL: "https://pokeapi.co/api/v2/pokemon/\(pokemonId)",
                                     method: .get)
        
        self.networkManager.request(request) { (result: Result<T, Error>) in
            completion(result)
        }
    }
}
