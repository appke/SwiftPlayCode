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
        
//        sum(abc: 2,  cba: 3)
        sum2(num1: 2, num2: 2)
        sum2(num1: 3, num2: 4)
        
        sum3(3, 2)
        
    }
    
    func buttonClick() {
        print("点击按钮");
    }
    
    func sum(abc num1 : Int, cba num2 : Int) -> Int {
        return num1 + num2
    }
    
    func sum2(num1 : Int, num2 : Int) -> Int {
        return num1 + num2
    }
    
    func sum3(_ num1 : Int, _ num2 : Int) -> Int {
        return num1 + num2
    }
}

