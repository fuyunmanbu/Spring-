//
//  rightViewController.swift
//  spring使用
//
//  Created by 刘志高 on 2017/7/5.
//  Copyright © 2017年 刘志高. All rights reserved.
//

import UIKit
import Spring

class rightViewController: UIViewController {
    var data: SpringView!
    
    @IBOutlet weak var rightView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        这里也可以在 autolayout 中设置好
        rightView.animateFrom = true
        rightView.animation = "slideRight"
        rightView.transform = CGAffineTransform(translationX: -300, y: 0)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIApplication.shared.sendAction(#selector(ViewController.maximizeView(_:)), to: nil, from: self, for: nil)
//        rightView.animation = "slideRight"  // 这些注视的代码在官方demo中有
//        rightView.animateFrom = false
//        rightView.animateToNext(completion: {
            self.dismiss(animated: false, completion: nil)
//        })
    }
    override func viewDidAppear(_ animated: Bool) {
        rightView.animate()
        UIApplication.shared.sendAction(#selector(ViewController.minimizeView(_:)), to: nil, from: self, for: nil)
    }
}
