//
//  AppDelegate.swift
//  Sample
//
//  Created by Muthu Arumugam on 4/3/22.
//

import UIKit
import CliftyCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Clifty.shared.setAccessKey(key: "cbe7ea72-b357-11ec-9386-3e102c667e65")
        
        if let sdkVersion = Bundle(for: Clifty.self).infoDictionary?["CFBundleShortVersionString"] {
            // sdkVersion is available here
            print(sdkVersion)
        }
        
        // When you switch the following into production, please make sure that you use
        // Eth or the appropriate network mainnet contract id's and token numbers.
//        Clifty.shared.setProduction()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

