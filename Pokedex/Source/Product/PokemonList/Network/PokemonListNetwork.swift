//
//  PokemonDetailNetwork.swift
//  Pokedex
//
//  Created by Otavio Brito on 30/07/22.
//

import Foundation

class PokemonListNetwork {
    
    private final let networkManager = NetworkManager()
    
    func fetchPokemonList<T>(from index:Int, completion: @escaping NetworkResult<T>) {
        let request = NetworkRequest(endpointURL: "https://api-pokemons-go.herokuapp.com/pokemon/all/\(index)/20",
                                     method: .get)
        
        self.networkManager.request(request) { (result: Result<T, Error>) in
            completion(result)
        }
    }
}
