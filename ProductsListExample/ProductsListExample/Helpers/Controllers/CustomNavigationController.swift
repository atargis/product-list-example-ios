//
//  CustomNavigationController.swift
//  ProductsListExample
//
//  Created by Adam Kowalski on 03/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import UIKit

private struct Constants {
    static let tintColor: UIColor = .systemGreen
}

final class CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
    }

    private func style() {
        navigationBar.tintColor = Constants.tintColor
    }
}
