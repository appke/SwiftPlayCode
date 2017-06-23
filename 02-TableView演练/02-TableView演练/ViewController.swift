//
//  ViewController.swift
//  02-TableView演练
//
//  Created by 穆良 on 2017/6/21.
//  Copyright © 2017年 穆良. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    private lazy var tableView: UITableView = {
        
        // 实例化 指定样式
        let tb = UITableView(frame: CGRect.zero, style: UITableViewStyle.plain)
        tb.dataSource = self
        // 注册可重用cell [UITableViewCell class]
        // 注册一个类
//        tb.register(UITableViewCell.self , forCellReuseIdentifier: "CELL")

        return tb
    }()
    
    // 纯代码创建视图层次结构 - 和 storyboard/xib 等价
    override func loadView() {
        
        // 在访问 view 时，如果view == nil, 会自动调用 loadView方法
        // view没有创建 又来到这个方法 死循环
        // print(view)
        
        // view 就是tableView; tableViewController也是这么做的
        view = tableView;
    }
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.magenta
    }
}


/// 将一组相关的代码放在一起, 便于阅读和维护
/// 遵守协议的写法 类似其他语言中 多继承
extension ViewController: UITableViewDataSource {
    
    // 不实现直接报错
    // UITableViewController 需要override已经遵守了协议，实现了方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 33;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 方式一: 必须注册可重用cell
        // iOS6.0 出现indexPath 代替原始方法——>iOS7.0以后下面代码很少出现——>Swift中注册机制优势明显
//        let cell = tableView.dequeueReusableCe÷ll(withIdentifier: "CELL", for: indexPath)
//        cell.textLabel?.text = "hello \(indexPath.row)"
//        return cell
        
        // 方式二
        // 最原始的方法，也可利用注册机制 不用判断了
        // 不要求注册可重用的cell, 返回值有可能为空——可选的
        var cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "CELL")
        }
        // cell? 可选更安全
        cell?.textLabel?.text = "hello \(indexPath.row)"
        return cell!
    }
}

/*
 ### 思考问题
 1. 创建tableView，frame参数怎么填？
 - 注册cell怎么填写class类型？
 - 怎样让view == tableView?
 - 为什么会死循环
 - 注册机制是怎样的
 - 原始创建时，cell为什么要转来转去
 - extension怎么用
 - 为什么不用写override了?
 
 - OC中没有多几继承, OC中用协议替代多线程
 
 */
