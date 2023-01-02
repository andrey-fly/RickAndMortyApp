//
//  RMEpisodeViewController.swift
//  RickAndMortyApp
//
//  Created by Andrey Mukhin on 02.01.2023.
//

import UIKit

/// Controller to show and search for Episodes
final class RMEpisodeViewController: UIViewController {

    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Constants.title
        view.backgroundColor = .systemBackground
    }
    
    // MARK: - Private
    private enum Constants {
        static let title: String = "Episodes"
    }
}
