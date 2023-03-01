//
//  Extensions.swift
//  RickAndMortyApp
//
//  Created by Andrey Mukhin on 01.03.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({ addSubview($0) })
    }
}
