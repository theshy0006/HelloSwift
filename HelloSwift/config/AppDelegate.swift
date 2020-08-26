//
//  AppDelegate.swift
//  HelloSwift
//
//  Created by wangyang on 2020/8/20.
//  Copyright © 2020 com.boc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    public var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        
        self.window?.rootViewController = TabbarVC()
        
        //初始化第三方库
        //self.launchPartner(application:application, launchOptions: launchOptions)
        window?.makeKeyAndVisible()
        return true
    }


}

