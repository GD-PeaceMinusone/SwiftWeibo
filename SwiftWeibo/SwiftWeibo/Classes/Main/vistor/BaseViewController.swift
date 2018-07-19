//
//  BaseViewController.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/7/8.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit

class BaseViewController: UITableViewController {
    lazy var vistorView : VisitorView = VisitorView.visitorView()
    
    var isLogin : Bool = true;
    
    override func loadView() {
        isLogin ? super.loadView() : setupVistorView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItemS()
    }
}

extension BaseViewController {
    private func setupVistorView() {
        view = vistorView
        vistorView.loginBtn.addTarget(self, action: #selector(loginBtnClick), for:.touchUpInside)
        vistorView.registerBtn.addTarget(self, action: #selector(registerBtnClick), for:.touchUpInside)
    }
    
    private func setupNavigationItemS() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "注册", style: .plain, target: self, action: #selector(registerBtnClick))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登录", style: .plain, target: self, action: #selector(loginBtnClick))
    }
}

extension BaseViewController {
    @objc private func registerBtnClick() {
        print("registerBtnClick")
    }
    
    @objc private func loginBtnClick() {
        print("loginBtnClick")
    }
}
