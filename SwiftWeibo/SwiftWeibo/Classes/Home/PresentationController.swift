//
//  PresentationController.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/7/13.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit

class PresentationController: UIPresentationController {
    override func containerViewWillLayoutSubviews() {
        super.containerViewWillLayoutSubviews()
        
        presentedView?.frame = CGRect(x: 100, y: 55, width: 180, height: 250)
        
        setupCoverView()
    }
}

extension PresentationController {
    private func setupCoverView() {
        let coverView : UIView = UIView()
        
        coverView.backgroundColor = UIColor(white: 0, alpha: 0.5)
        coverView.frame = containerView!.bounds // frame 不允许赋nil 所以强制解包
        
        let tapGes = UITapGestureRecognizer(target: self, action: #selector(coverViewClick))
        coverView.addGestureRecognizer(tapGes)
        
        containerView?.insertSubview(coverView, at: 0)
    }
}

extension PresentationController {
    @objc private func coverViewClick() {
        presentedViewController.dismiss(animated: true, completion: nil)
    }
}
