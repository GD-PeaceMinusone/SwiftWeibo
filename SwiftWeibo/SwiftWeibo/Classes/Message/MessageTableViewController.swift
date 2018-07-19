//
//  MessageTableViewController.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/3/15.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit

class MessageTableViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        vistorView.setupVistorViewInfo(imgName: "visitordiscover_image_message", title: "登录后,别人评论你的微博,给你发消息,都会在这里收到通知")
    }
}
