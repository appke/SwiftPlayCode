//
//  ViewController.swift
//  01-按钮点击
//
//  Created by MGBook on 2017/6/20.
//  Copyright © 2017年 MGBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let button = UIButton(type: .custom)
        
        button.setTitle("点一下……", for: .normal)
        button.sizeToFit()
        button.center = view.center
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        view.addSubview(button)
    }
    
    func buttonClick() {
        print("点击按钮");
    }
}

