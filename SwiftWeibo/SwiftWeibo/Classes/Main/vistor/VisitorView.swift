//
//  VisitorView.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/7/8.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit

class VisitorView: UIView {
    @IBOutlet weak var rotationView: UIImageView!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    
    class func visitorView() -> VisitorView {
        return Bundle.main.loadNibNamed("VisitorView", owner: nil, options: nil)?.first as! VisitorView
    }
    
    func setupVistorViewInfo(imgName: String, title: String) {
        iconView.image = UIImage(named: imgName)
        tipLabel.text = title;
        rotationView.isHidden = true
    }
    
    func addRotationAnim() {
        let rotationAnim = CABasicAnimation(keyPath: "transform.rotation.z")

        rotationAnim.fromValue = 0
        rotationAnim.toValue = Double.pi * 2
        rotationAnim.repeatCount = MAXFLOAT
        rotationAnim.duration = 5
        rotationAnim.isRemovedOnCompletion = false
        
        rotationView.layer.add(rotationAnim, forKey: nil)
    }
    
}
