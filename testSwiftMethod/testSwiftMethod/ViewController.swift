//
//  ViewController.swift
//  testSwiftMethod
//
//  Created by MGBook on 2018/8/5.
//  Copyright © 2018年 MGBook. All rights reserved.
//

import UIKit

//protocol MyClassDelegate {
//    func method()
//}
//
//class MyClass {
//    weak var delegate: MyClassDelegate?
//}


class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        button.addTarget(self, action: Selector("buttonDidClick"), for: .touchUpInside)
        
        
        
        let addButton = UIButton(type: .contactAdd)
//        cusButton.setImage(, for: <#T##UIControlState#>)
        addButton.center = view.center;
        view.addSubview(addButton);
        
        
        /// 普通按钮
        let button2 = UIButton(type: .custom)
        button2.setImage(UIImage(named: "icon_addcart_dis"), for: .normal)
        button2.setImage(UIImage(named: "buy_normal"), for: .highlighted)
        
//        button2.center = CGPoint(x: 100, y: 100)
        button2.frame = CGRect(x: 50, y: 50, width: 56, height: 56)
        
        view.addSubview(button2);
        
        
        testMethod()
        
    }
    
//    @objc
    
    /// 学习闭包
    
    
}

extension ViewController {
    func buttonDidClick() {
        print("---buttonDidClick")
    }
    
    func testMethod() -> () {
        print("-------\(#function)")
    }
}


