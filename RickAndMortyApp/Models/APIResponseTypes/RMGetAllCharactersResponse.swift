//
//  RMGetAllCharactersResponse.swift
//  RickAndMortyApp
//
//  Created by Andrey Mukhin on 09.02.2023.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: URL?
        let prev: URL?
    }
    let info: Info
    let results: [RMCharacter]
    
}

