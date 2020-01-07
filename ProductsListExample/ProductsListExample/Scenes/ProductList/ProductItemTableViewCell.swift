//
//  ProductItemTableViewCell.swift
//  ProductsListExample
//
//  Created by Adam Kowalski on 07/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import UIKit

final class ProductItemTableViewCell: UITableViewCell {

    static let reuseIdentifier = "ProductItem"
    
    @IBOutlet private weak var picture: UIImageView!
    @IBOutlet private weak var title: UILabel!
    @IBOutlet private weak var size: UILabel!
    @IBOutlet private weak var price: UILabel!
    @IBOutlet private weak var sizeLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    
    private func loadModel(model: ProductItem) {
        title.text = model.title
        size.text = model.size
        price.text = model.price
        // TODO: - Download picture model.imageUrl
    }

    /// Set values
    func setup(model: ProductItem) {
        loadModel(model: model)
    }
    
}
