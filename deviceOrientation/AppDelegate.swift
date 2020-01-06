//
//  AppDelegate.swift
//  deviceOrientation
//
//  Created by song on 2020/1/2.
//  Copyright © 2020 song. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UIDevice.current.beginGeneratingDeviceOrientationNotifications()
        NotificationCenter.default.addObserver(self, selector: #selector(showDeviceOrientation), name: UIDevice.orientationDidChangeNotification, object: nil)
        let firstVC = FirstViewController.init();
        let firstNav = UINavigationController.init(rootViewController: firstVC)
        let secVC = SecViewController.init()
        let secNav = UINavigationController.init(rootViewController: secVC)
        let tabVC = UITabBarController.init()
        tabVC.viewControllers = [firstNav, secNav]
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()
        window?.rootViewController = tabVC
        return true
    }
    
    @objc func showDeviceOrientation() {
        switch UIDevice.current.orientation {
        case .portrait:
            print("portrait")
        case .landscapeLeft:
            print("landscapeLeft")
        case .landscapeRight:
            print("landscapeRight")
        case .portraitUpsideDown:
            print("portraitUpsideDown")
        default:
            print("unknow")
        }
    }

    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return .all
    }


}

