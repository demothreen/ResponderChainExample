//
//  AppDelegate.swift
//  UIResponderExample
//
//  Created by demothreen on 03.08.2021.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.backgroundColor = .white
    window?.makeKeyAndVisible()
    window?.rootViewController = UINavigationController(rootViewController: FirstController())

    return true
  }
}

