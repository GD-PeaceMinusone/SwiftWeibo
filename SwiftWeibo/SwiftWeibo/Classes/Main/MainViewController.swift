//
//  MainViewController.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/3/15.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    private lazy var composeBtn : UIButton = UIButton() 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        for index in 0..<tabBar.items!.count {
            if index==2 {
                let item = tabBar.items![index]
                item.isEnabled = false;
            }
        }
    }
}

