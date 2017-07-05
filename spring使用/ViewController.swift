//
//  ViewController.swift
//  spring使用
//
//  Created by 刘志高 on 2017/7/5.
//  Copyright © 2017年 刘志高. All rights reserved.
//

import UIKit
import Spring

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    /*
    有很多类，需要时间积累，大家慢慢研究
     
    简单思路：
     1. cocopads导入框架
     2. 创建第二个视图，这里橘色的view，其他的遮挡物都是 clearColor，包括该控制器的view
     3. 切换到这个view时，官方demo autulayout使用present Modally切换，presentation 要选择 Over...开头的（autolaout如此，代码切换应该如此）
     4. 在第二个控制器中的写法如代码
     
     实现原理：
     看起来似乎是控制器之间的切换动画，其实是控制器切换后再实现的动画效果
     */
    // 缩小
    func minimizeView(_ sender: AnyObject) {
        SpringAnimation.spring(duration: 0.7, animations: {
            self.view.transform = CGAffineTransform(scaleX: 0.935, y: 0.935)
        })
    }
    // 放大
    func maximizeView(_ sender: AnyObject) {
        SpringAnimation.spring(duration: 0.7, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
    }
}

