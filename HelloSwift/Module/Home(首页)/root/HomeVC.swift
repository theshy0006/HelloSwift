//
//  HomeVC.swift
//  HelloSwift
//
//  Created by wangyang on 2020/8/20.
//  Copyright © 2020 com.boc. All rights reserved.
//

import UIKit

class HomeVC: BaseVC {

    override func setUpView() {
        // 本地化
        self.navigationItem.title = "homeTitle".localized
        
        //设置NavBar按钮
        self.setNavBarLeftBtn(fontCode: .nav_scan, selector: #selector(popBack))
        self.setNavBarRightBtn(fontCode: .nav_message, color_main_red, selector: #selector(readMessage))

        //空白视图
        createEmptyResultUI()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        get{
            return.default
        }
    }
    
    @objc func readMessage() {
        
    }
}
