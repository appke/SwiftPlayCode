//
//  ViewController.swift
//  protol协议
//
//  Created by MGBook on 2018/8/7.
//  Copyright © 2018年 MGBook. All rights reserved.
//

import UIKit

protocol BuyTicketProtocol {
    func buyTicket()
}
class Person {
    // 1.定义协议属性
    var delegate : BuyTicketProtocol
    // 2.自定义构造函数
    init (delegate : BuyTicketProtocol) {
        self.delegate = delegate
    }
    // 3.行为
    func goToBeijing() {
        delegate.buyTicket()
    }
}

class HuangNiu: BuyTicketProtocol {
    func buyTicket() {
        print("买了一张火车票")
    }
}

//MARK: - 第二套协议
protocol MyClassDelegate: class {
    func method()
}

class MyClass {
    weak var delegate: MyClassDelegate?
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p = Person(delegate: HuangNiu())
//        let p2 = Person()
        
        p.goToBeijing()
        
//        someInstance = MyClass()
//        someInstance.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

