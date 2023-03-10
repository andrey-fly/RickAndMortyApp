//
//  RMLocationViewController.swift
//  RickAndMortyApp
//
//  Created by Andrey Mukhin on 02.01.2023.
//

import UIKit

/// Controller to show and search for Locations
final class RMLocationViewController: UIViewController {

    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Constants.title
        view.backgroundColor = .systemBackground
    }
    
    // MARK: - Private
    private enum Constants {
        static let title: String = "Locations"
    }
}
