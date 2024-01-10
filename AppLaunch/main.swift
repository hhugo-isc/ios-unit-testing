//
//  main.swift
//  AppLaunch
//
//  Created by administrador on 09/01/24.
//

import UIKit

let appDelegateClass: AnyClass = NSClassFromString("TestingAppDelegate") ?? AppDelegate.self

UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    nil, 
    NSStringFromClass(appDelegateClass)
)
