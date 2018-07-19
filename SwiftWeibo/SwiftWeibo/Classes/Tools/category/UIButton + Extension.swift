//
//  UIButton + Extension.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/7/6.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit

extension UIButton {
    // 以class开头为类方法
    /*
    class func creatButton(imageName : String, bgImageName : String) -> UIButton {
        
        let btn = UIButton()
        
        btn.sizeToFit()
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: imageName + "_highlighted"), for: .highlighted)
        btn.setBackgroundImage(UIImage(named: bgImageName), for: .normal)
        btn.setBackgroundImage(UIImage(named: bgImageName + "_highlighted"), for: .highlighted)

        return btn
    }
     */
    
    // convenience 修饰的为 便利构造函数
    convenience init(imageName : String, bgImageName : String) {
        self.init()

        setImage(UIImage(named: imageName), for: .normal)
        setImage(UIImage(named: imageName + "_highlighted"), for: .highlighted)
        
        setBackgroundImage(UIImage(named: bgImageName), for: .normal)
        setBackgroundImage(UIImage(named: bgImageName + "_highlighted"), for: .highlighted)
        
        sizeToFit()
    }
}
