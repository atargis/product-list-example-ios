//
//  UIView+Layout.swift
//  ProductsListExample
//
//  Created by Adam Kowalski on 07/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import UIKit

extension UIView {
    func pinToSuperview() {
        guard let parentView = superview else {
            return
        }
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: 0),
            self.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: 0),
            self.topAnchor.constraint(equalTo: parentView.topAnchor),
            self.bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: 0),
        ])
    }
}
