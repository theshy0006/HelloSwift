//
//  TabbarVC.swift
//  HelloSwift
//
//  Created by wangyang on 2020/8/20.
//  Copyright © 2020 com.boc. All rights reserved.
//

import UIKit
class TabbarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.isTranslucent = false
        self.tabBar.backgroundImage = UIImage()
        self.tabBar.tintColor = tabbarFontSelectColor
        
        // 首页
        self.addChildVC(HomeVC(), title: "home".localized, fontCode: IconFont.tabbar_home, normal: tabbarFontNormalColor, selImgName: tabbarFontSelectColor)
        // 分类
        self.addChildVC(CateVC(), title: "cate".localized, fontCode: IconFont.tabbar_cate, normal: tabbarFontNormalColor, selImgName: tabbarFontSelectColor)
        // 购物车
        self.addChildVC(CartVC(), title: "cart".localized, fontCode: IconFont.tabbar_cart, normal: tabbarFontNormalColor, selImgName: tabbarFontSelectColor)
        // 我的页面
        self.addChildVC(MineVC(), title: "mine".localized, fontCode: IconFont.tabbar_home, normal: tabbarFontNormalColor, selImgName: tabbarFontSelectColor)
    }
    
    func addChildVC(_ clildVC: UIViewController, title: String, fontCode: IconFont, normal: UIColor,
                    selImgName: UIColor, _ size: CGFloat = 25) {
        // 设置文字内容
        clildVC.tabBarItem.title = title
        clildVC.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor  : selImgName], for: .selected)
        // 设置图片内容
        clildVC.tabBarItem.image = UIImage.imageWithIcon(fontCode: fontCode, color: normal, size: size)
        clildVC.tabBarItem.selectedImage = UIImage.imageWithIcon(fontCode: fontCode, color: selImgName, size: size)
        self.addChild(NavigationVC(rootViewController: clildVC))
    }
    
    
    // MARK：用法二
    /*
    self.addClildVC(HomeVC(), title: "首页",
                    imgName: "tab-home", selImgName: "tab-home-current")
    self.addClildVC(CateVC(), title: "分类",
                    imgName: "tab-cate", selImgName: "tab-cate-current")
    self.addClildVC(CartVC(), title: "购物车",
                    imgName: "tab-cart", selImgName: "tab-cart-current")
    self.addClildVC(MineVC(), title: "我的",
                    imgName: "tab-my", selImgName: "tab-my-current")
    */
    
    func addClildVC(_ clildVC: UIViewController, title: String, imgName: String, selImgName: String) {
        clildVC.tabBarItem.title = title
        clildVC.tabBarItem.image = UIImage(named: imgName)
        clildVC.tabBarItem.selectedImage = UIImage(named: selImgName)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        clildVC.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor  : tabbarFontSelectColor], for: .selected)
        self.addChild(NavigationVC(rootViewController: clildVC))
        
        
        
    }
}
