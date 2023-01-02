//
//  RMTabBarController.swift
//  RickAndMortyApp
//
//  Created by Andrey Mukhin on 02.01.2023.
//

import UIKit

final class RMTabBarController: UITabBarController {

    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    // MARK: - Private
    private func setUpTabs() {
        setViewControllers(Tabs.allTabs, animated: true)
    }
}

extension RMTabBarController {
    private enum Tabs: Int, CaseIterable {
        case characters, locations, episodes, settings
        
        static var allTabs: [UIViewController] {
            allCases.map { $0.navController }
        }
        
        private var controller: UIViewController {
            let controller: UIViewController
            switch self {
            case .characters:
                controller = RMCharacterViewController()
            case .locations:
                controller = RMLocationViewController()
            case .episodes:
                controller = RMEpisodeViewController()
            case .settings:
                controller = RMSettingsViewController()
            }
            controller.navigationItem.largeTitleDisplayMode = .automatic
            return controller
        }
        
        private var image: UIImage? {
            let systemName: String
            switch self {
            case .characters:
                systemName = "person"
            case .locations:
                systemName = "globe"
            case .episodes:
                systemName = "tv"
            case .settings:
                systemName = "gear"
            }
            return UIImage(systemName: systemName)
        }
        
        private var title: String {
            switch self {
            case .characters:
                return "Characters"
            case .locations:
                return "Locations"
            case .episodes:
                return "Episodes"
            case .settings:
                return "Settings"
            }
        }
        
        private var navController: UINavigationController {
            let navController = UINavigationController(rootViewController: self.controller)
            navController.navigationBar.prefersLargeTitles = true
            navController.tabBarItem = .init(title: self.title, image: self.image, tag: rawValue)
            return navController
        }
    }
}
