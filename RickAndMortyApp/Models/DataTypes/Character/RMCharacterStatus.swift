//
//  RMCharacterStatus.swift
//  RickAndMortyApp
//
//  Created by Andrey Mukhin on 08.02.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown
}
