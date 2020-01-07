//
//  ProductItemClusterSection.swift
//  ProductsListExample
//
//  Created by Adam Kowalski on 07/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import Foundation
import RxDataSources

struct ProductItemClusterSection: SectionModelType {
    var sectionTitle: String
    var items: [ProductItem]
}

extension ProductItemClusterSection {
    typealias Item = ProductItem

    init(original: ProductItemClusterSection, items: [ProductItem]) {
        self = original
        self.items = items
    }
    
    static func listProducts() -> [ProductItemClusterSection] {
        return [ProductItemClusterSection(sectionTitle: "Test section", items: [ProductItem(id: 1, price: "12.34", title: "Product for test", size: "big pack", imageUrl: nil, description: nil)])]
    }
}
