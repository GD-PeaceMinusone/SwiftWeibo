//
//  MainViewController.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/3/15.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = UIColor.orange;
        
        addChildControllers()
    }
    
    func addChildControllers(){
        addTabbarChildController(childVc: HomeTableViewController(), title: "首页", imageName: "tabbar_home")
        addTabbarChildController(childVc: MessageTableViewController(), title: "消息", imageName: "tabbar_message_center")
        addTabbarChildController(childVc: DiscoverTableViewController(), title: "发现", imageName: "tabbar_discover")
        addTabbarChildController(childVc: ProfileTableViewController(), title: "我", imageName: "tabbar_profile")
    }

    private func addTabbarChildController(childVc: UIViewController, title: String, imageName: String) {
        childVc.title = title
        childVc.tabBarItem.image = UIImage.init(named: imageName)
        childVc.tabBarItem.selectedImage = UIImage.init(named: imageName + "_highlighted");
        
        let childNav = UINavigationController(rootViewController: childVc);
    
        addChildViewController(childNav)
    }
}

