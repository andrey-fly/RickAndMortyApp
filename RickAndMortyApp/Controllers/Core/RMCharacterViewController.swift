//
//  RMCharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Andrey Mukhin on 02.01.2023.
//

import UIKit


/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Constants.title
        view.backgroundColor = .systemBackground
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)
        RMService.shared.execute(request, expecting: String.self) { result in
            switch result {
            case .success(_):
                <#code#>
            case .failure(_):
                <#code#>
            }
        }
    }
    
    // MARK: - Private
    private enum Constants {
        static let title: String = "Characters"
    }
}
