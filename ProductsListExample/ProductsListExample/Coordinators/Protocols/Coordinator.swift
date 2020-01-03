//
//  Coordinator.swift
//  ProductsListExample
//
//  Created by Adam Kowalski on 03/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var rootViewController: UIViewController { get }
    func start()
}
