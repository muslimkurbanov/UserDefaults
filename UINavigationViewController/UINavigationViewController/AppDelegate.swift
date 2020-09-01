//
//  AppDelegate.swift
//  UINavigationViewController
//
//  Created by Муслим Курбанов on 20.05.2020.
//  Copyright © 2020 Муслим Курбанов. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navController = UINavigationController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let viewController = ViewController()
        let secondViewController = SecondViewController()
        
        if UserSettings.userName == "" {

            self.navController = UINavigationController(rootViewController: viewController)
            
        } else {

            self.navController = UINavigationController(rootViewController: secondViewController)
            secondViewController.nameText = UserSettings.userName ?? ""
            secondViewController.surnameText = UserSettings.userSurname ?? ""


        }
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = self.navController
        
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()

     
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    

}

