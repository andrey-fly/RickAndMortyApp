//
//  RMCharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Andrey Mukhin on 02.01.2023.
//

import UIKit


/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {
    
    private let characterListView = CharacterListView()

    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Constants.title
        view.backgroundColor = .systemBackground
        setUpView()
    }
    
    // MARK: - Private
    private enum Constants {
        static let title: String = "Characters"
    }
    
    // MARK: Private methods
    private func setUpView() {
        view.addSubview(characterListView)
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
