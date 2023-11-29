//
//  AppDelegate.swift
//  MtDCA
//
//  Created by Milan Djordjevic on 29/11/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let vc = MainViewController(styling: StylingFacade())
        
        let navigationController = UINavigationController()
        navigationController.pushViewController(vc, animated: true)
        window?.rootViewController = navigationController
        return true
    }
}

