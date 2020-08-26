//
//  CartVC.swift
//  HelloSwift
//
//  Created by wangyang on 2020/8/20.
//  Copyright © 2020 com.boc. All rights reserved.
//

import UIKit

class CartVC: BaseVC {
    override func setUpData() {
    }
    
    override func setUpView() {
        self.navigationItem.title = "购物车"
        createEmptyResultUI()
    }
}
