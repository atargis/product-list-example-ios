//
//  AppCoordinator.swift
//  ProductsListExample
//
//  Created by Adam Kowalski on 02/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import UIKit

private struct Localizable {
    static let helloTitle = "Hello World! :)"
}

final class AppCoordinator: Coordinator {
    private let window: UIWindow
    private let navigationController = CustomNavigationController(rootViewController: UIViewController())

    var rootViewController: UIViewController {
        return navigationController
    }

    init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = rootViewController
        self.window.makeKeyAndVisible()
    }

    func start() {
        showProductList()
    }

    func showProductList() {
        // TODO: - Change helloSampleVC to proper TableViewController class
        let helloSampleViewController = ProductListVC()
        helloSampleViewController.title = Localizable.helloTitle
        navigationController.viewControllers = [helloSampleViewController]
    }
}
