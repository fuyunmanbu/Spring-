//
//  townViewController.swift
//  spring使用
//
//  Created by 刘志高 on 2017/7/5.
//  Copyright © 2017年 刘志高. All rights reserved.
//

import UIKit
import Spring

class townViewController: UIViewController {

    @IBOutlet weak var modalView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        这些属性可以在aulayout里设置
        modalView.animation = "squeezeUp"
        modalView.animateFrom = true
        modalView.transform = CGAffineTransform(translationX: 0, y: 300)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
        UIApplication.shared.sendAction(#selector(ViewController.maximizeView(_:)), to: nil, from: self, for: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
//        该写法注意了，以后应该会用到
        UIApplication.shared.sendAction(#selector(ViewController.minimizeView(_:)), to: nil, from: self, for: nil)
        modalView.animate()
    }
}
