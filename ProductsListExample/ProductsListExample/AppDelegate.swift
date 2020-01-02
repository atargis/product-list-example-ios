//
//  AppDelegate.swift
//  ProductsListExample
//
//  Created by Adam Kowalski on 02/01/2020.
//  Copyright © 2020 Adam Kowalski. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private var coordinator: AppCoordinator?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        startApp()
        return true
    }

    private func startApp() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        window.makeKeyAndVisible()
        coordinator = AppCoordinator(window: window)
        coordinator?.start()
    }
}

