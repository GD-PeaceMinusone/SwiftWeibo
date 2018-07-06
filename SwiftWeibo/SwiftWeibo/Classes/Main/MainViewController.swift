//
//  MainViewController.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/3/15.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    private lazy var composeBtn : UIButton = UIButton(imageName: "tabbar_compose_icon_add", bgImageName: "tabbar_compose_button")

    override func viewDidLoad() {
        super.viewDidLoad()
        setupComposeBtn()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        setupItemDisable()
    }
}

extension MainViewController {
    private func setupComposeBtn() {
        composeBtn.center = CGPoint(x: tabBar.center.x, y: tabBar.bounds.size.height * 0.5)
        
        tabBar.addSubview(composeBtn)
    }
    
    private func setupItemDisable () {
        for index in 0..<tabBar.items!.count {
            if index==2 {
                let item = tabBar.items![index]
                item.isEnabled = false;
            }
        }
    }
}

