//
//  AppCoordinator.swift
//  ProductsListExample
//
//  Created by Adam Kowalski on 02/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var rootViewController: UIViewController { get }
    func start()
}

final class AppCoordinator: Coordinator {
    private let window: UIWindow

    var rootViewController: UIViewController {
        return UINavigationController()
    }
    
    init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = rootViewController
        self.window.makeKeyAndVisible()
    }

    func start() {
        // TODO: - Change for correct screen (in the future)
    }
}
