//
//  TestingAppDelegate.swift
//  AppLaunchTests
//
//  Created by administrador on 09/01/24.
//

import UIKit

@objc(TestingAppDelegate)
class TestingAppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print(">> Launching with testing app delegate")
        return true
    }
    
}

