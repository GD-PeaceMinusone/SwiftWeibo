//
//  ProfileTableViewController.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/3/15.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit

class ProfileTableViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        vistorView.setupVistorViewInfo(imgName: "visitordiscover_image_profile", title: "登录后,你的微博,相册,个人资料会显示在这里,展示给别人" )
    }
}

