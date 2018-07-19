//
//  UIBarButtonItem + Extension.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/7/12.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit
extension UIBarButtonItem {
    convenience init(imgName:String) {
        
        let btn = UIButton()
        btn.setImage(UIImage(named: imgName), for: .normal)
        btn.setImage(UIImage(named: imgName + "_highlighted"), for: .highlighted)
        btn.sizeToFit()
        
        self.init(customView: btn)
    }
}
