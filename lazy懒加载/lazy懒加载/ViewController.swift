//
//  ViewController.swift
//  lazy懒加载
//
//  Created by MGBook on 2018/8/7.
//  Copyright © 2018年 MGBook. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
    
    lazy var str: String = {
        let str = "Hello"
        print("只在首次访问输出")
        return str;
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

     
        print(str)
        print(str)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func method() {
        print("Do something")
    }
}



//// ClassA.h
//@property (nonatomic, copy) NSString *testString;
//
//// ClassA.m
//- (NSString *)testString {
//    if (!_testString) {
//        _testString = @"Hello";
//        NSLog(@"只在首次访问输出");
//    }
//    return _testString;
//}
