//
//  RMRequest.swift
//  RickAndMortyApp
//
//  Created by Andrey Mukhin on 02.01.2023.
//

import Foundation

/// Objects that represents a single API Call
final class RMRequest {
    /// API constants
    private enum Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }

    /// Desired endpoint
    private let endpoint: RMEndpoint

    /// Path components to API, if any
    private let pathComponents: [String]

    /// Query parameters to API, if any
    private let queryParameters: [URLQueryItem]

    /// Constructed url for API request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        if !pathComponents.isEmpty {
            pathComponents.forEach { string += "/\($0)" }
        }
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters
                .compactMap {
                    guard let value = $0.value else { return nil }
                    return "\($0.name)=\(value)"
                }
                .joined(separator: "&")
            string += argumentString
        }
        return string
    }

    /// Desired http method
    public let httpMethod = "GET"

    /// Computed and constructed API url
    public var url: URL? {
        URL(string: urlString)
    }

    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(endpoint: RMEndpoint,
                pathComponents: [String] = .init(),
                queryParameters: [URLQueryItem] = .init())
    {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}
