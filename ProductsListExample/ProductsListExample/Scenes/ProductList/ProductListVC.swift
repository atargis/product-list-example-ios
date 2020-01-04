//
//  ProductListVC.swift
//  ProductListViewController
//
//  Created by Adam Kowalski on 02/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import UIKit

final class ProductListVC: UIViewController {

    private let productListView: ProductListView

    init() {
        productListView = ProductListView.fromXib()
        super.init(nibName: nil, bundle: nil)
        view.addSubview(productListView)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
