//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Andrey Mukhin on 02.01.2023.
//

import Foundation


/// Primary API service object to get Rick and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    
    /// Privatized constructor
    private init() {}
    
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - comletion: Callback with data or error
    func execute(_ request: RMRequest, comletion: @escaping () -> Void) {
        
    }
}
