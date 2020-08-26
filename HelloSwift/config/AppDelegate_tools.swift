//
//  AppDelegate_tools.swift
//  HelloSwift
//
//  Created by wangyang on 2020/8/20.
//  Copyright © 2020 com.boc. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

// MARK: - 启动第三方库
extension AppDelegate {
    func launchPartner(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        // 注册微信服务
        //向微信注冊
        
        // 注册键盘
        setupIQKeyboardManager()
    }
    
    func setupIQKeyboardManager() {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.enableAutoToolbar = true
        IQKeyboardManager.shared.toolbarDoneBarButtonItemText = "完成"
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        IQKeyboardManager.shared.shouldShowToolbarPlaceholder = false
    }
}

