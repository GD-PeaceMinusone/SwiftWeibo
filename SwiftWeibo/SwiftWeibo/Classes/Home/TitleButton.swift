//
//  TitleButton.swift
//  SwiftWeibo
//
//  Created by Jackeylove on 2018/7/12.
//  Copyright © 2018年 Jackeylove. All rights reserved.
//

import UIKit

class TitleButton: UIButton {
    override init(frame: CGRect) { // 代码实例化view 调用init frame 方法
        super.init(frame: frame)
        
        setImage(UIImage(named: "navigationbar_arrow_down"), for: .normal)
        setImage(UIImage(named: "navigationbar_arrow_up"), for: .selected)
        setTitle("ZhangShi", for: .normal)
        setTitleColor(UIColor.black, for: .normal)
        sizeToFit()
    }
    
    // 重写init 方法 必须也重写 init coder 方法
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
         titleLabel!.frame.origin.x = 0
         imageView!.frame.origin.x = titleLabel!.frame.size.width + 5 
    }
}
