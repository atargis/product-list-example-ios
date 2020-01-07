//
//  ProductItem.swift
//  ProductsListExample
//
//  Created by Adam Kowalski on 07/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import Foundation

struct ProductItem: Decodable {
    let id: Int
    let price: String?
    let title: String?
    let size: String?
    let imageUrl: URL?
    let description: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case price
        case title
        case size
        case imageUrl
        case description
    }
}
