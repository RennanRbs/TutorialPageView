//
//  AppDelegate.swift
//  TutorialPageViewController
//
//  Created by Rennan Rebouças on 15/10/19.
//  Copyright © 2019 Rennan Rebouças. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



     var window: UIWindow?

        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            
            self.window = UIWindow(frame: UIScreen.main.bounds)
            self.window?.makeKeyAndVisible()
            
            let homeController = ViewController()
            let navigationController = UINavigationController(rootViewController: homeController)
    //        navigationController.navigationBar.setStyle()
            
            self.window?.rootViewController = navigationController
            return true
        }

}
